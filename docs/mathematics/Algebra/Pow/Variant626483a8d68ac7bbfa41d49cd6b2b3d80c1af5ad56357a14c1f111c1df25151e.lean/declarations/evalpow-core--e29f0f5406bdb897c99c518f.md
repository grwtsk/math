# evalPow.core

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6266e308d5dd20b9fad1c902c181a2b25a8860a08637032001157e4d20fe56e",
  "kind": "def",
  "lexical_name": "evalPow.core",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "evalpow-core--e29f0f5406bdb897c99c518f",
  "source": {
    "blob": "384aae3c53c58ed96570c88c7151ce959041af15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 184,
    "path": "GRWTSK/Algebra/Pow/Variant626483a8d68ac7bbfa41d49cd6b2b3d80c1af5ad56357a14c1f111c1df25151e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e29f0f5406bdb897c99c518fd7c84fa91293b0409c2ae32150cc227652bd637b",
  "verification": {
    "reference": "docs/verification/Algebra/Pow/Variant626483a8d68ac7bbfa41d49cd6b2b3d80c1af5ad56357a14c1f111c1df25151e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6266e308d5dd20b9fad1c902c181a2b25a8860a08637032001157e4d20fe56e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def evalPow.core {u : Level} {α : Q(Type u)} (e : Q(«$α»)) (f : Q(«$α» → ℕ → «$α»))
    (a : Q(«$α»)) (b nb : Q(ℕ)) (pb : Q(IsNat «$b» «$nb»)) (sα : Q(Semiring «$α»)) (ra : Result a) :
    OptionT CoreM (Result e) := do
  haveI' : $e =Q $a ^ $b := ⟨⟩
  haveI' : $f =Q HPow.hPow := ⟨⟩
  match ra with
  | .isBool .. => failure
  | .isNat sα na pa =>
    assumeInstancesCommute
    let ⟨c, r⟩ ← evalNatPow na nb
    return .isNat sα c q(isNat_pow (f := $f) (.refl $f) $pa $pb $r)
  | .isNegNat rα .. =>
    assumeInstancesCommute
    let ⟨za, na, pa⟩ ← OptionT.mk <| pure (ra.toInt rα)
    let ⟨zc, c, r⟩ ← evalIntPow za na nb
    return .isInt rα c zc q(isInt_pow (f := $f) (.refl $f) $pa $pb $r)
  | .isNNRat dα _qa na da pa =>
    assumeInstancesCommute
    let ⟨nc, r1⟩ ← evalNatPow na nb
    let ⟨dc, r2⟩ ← evalNatPow da nb
    let qc := mkRat nc.natLit! dc.natLit!
    return .isNNRat dα qc nc dc q(isNNRat_pow (f := $f) (.refl $f) $pa $pb $r1 $r2)
  | .isNegNNRat dα qa na da pa =>
    assumeInstancesCommute
    let ⟨zc, nc, r1⟩ ← evalIntPow qa.num q(Int.negOfNat $na) nb
    let ⟨dc, r2⟩ ← evalNatPow da nb
    let qc := mkRat zc dc.natLit!
    return .isRat dα qc nc dc q(isRat_pow (f := $f) (.refl $f) $pa $pb $r1 $r2)

/-- The `norm_num` extension which identifies expressions of the form `a ^ b`,
such that `norm_num` successfully recognises both `a` and `b`, with `b : ℕ`. -/
@[norm_num _ ^ (_ : ℕ)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Pow/Variant626483a8d68ac7bbfa41d49cd6b2b3d80c1af5ad56357a14c1f111c1df25151e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Pow/Variant626483a8d68ac7bbfa41d49cd6b2b3d80c1af5ad56357a14c1f111c1df25151e.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `384aae3c53c58ed96570c88c7151ce959041af15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
