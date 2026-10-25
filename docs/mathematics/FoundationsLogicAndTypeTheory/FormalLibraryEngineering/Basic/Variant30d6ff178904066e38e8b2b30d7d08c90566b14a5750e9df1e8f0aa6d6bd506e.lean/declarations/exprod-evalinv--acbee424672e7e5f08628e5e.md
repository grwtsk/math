# ExProd.evalInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:17145f6bda337211122fc1a60ad3642b36b3e77485aca8a08959722392a9b19a",
  "kind": "def",
  "lexical_name": "ExProd.evalInv",
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
  "slug": "exprod-evalinv--acbee424672e7e5f08628e5e",
  "source": {
    "blob": "c0556d34bf7c0e9bdaf9836960c6b93fc2c23d35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 943,
    "line": 919,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant30d6ff178904066e38e8b2b30d7d08c90566b14a5750e9df1e8f0aa6d6bd506e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:acbee424672e7e5f08628e5e5531ef7c53de685ed671b1c0e45873448288ee47",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant30d6ff178904066e38e8b2b30d7d08c90566b14a5750e9df1e8f0aa6d6bd506e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:17145f6bda337211122fc1a60ad3642b36b3e77485aca8a08959722392a9b19a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 919–943.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ExProd.evalInv (czα : Option Q(CharZero $α)) (va : ExProd sα a) :
    AtomM (Result (ExProd sα) q($a⁻¹)) := do
  match va with
  | .const c hc =>
    let ra := Result.ofRawRat c a hc
    match NormNum.evalInv.core q($a⁻¹) a ra dα czα with
    | some rc =>
      let ⟨zc, hc⟩ := rc.toRatNZ.get!
      let ⟨c, pc⟩ := rc.toRawEq
      pure ⟨c, .const zc hc, pc⟩
    | none =>
      let ⟨_, vc, pc⟩ ← evalInvAtom sα dα a
      pure ⟨_, vc.toProd (ExProd.mkNat sℕ 1).2, q(toProd_pf $pc)⟩
  | .mul (x := a₁) (e := _a₂) _va₁ va₂ va₃ => do
    let ⟨_b₁, vb₁, pb₁⟩ ← evalInvAtom sα dα a₁
    let ⟨_b₃, vb₃, pb₃⟩ ← va₃.evalInv czα
    let ⟨c, vc, (pc : Q($_b₃ * ($_b₁ ^ $_a₂ * Nat.rawCast 1) = $c))⟩ :=
      evalMulProd sα vb₃ (vb₁.toProd va₂)
    pure ⟨c, vc, (q(inv_mul $pb₁ $pb₃ $pc) : Expr)⟩

/-- Inverts a polynomial `va` to get a normalized result polynomial.

* `0⁻¹ = 0`
* `a⁻¹ = (a⁻¹)` if `a` is a nontrivial sum
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant30d6ff178904066e38e8b2b30d7d08c90566b14a5750e9df1e8f0aa6d6bd506e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant30d6ff178904066e38e8b2b30d7d08c90566b14a5750e9df1e8f0aa6d6bd506e.lean#L919).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0556d34bf7c0e9bdaf9836960c6b93fc2c23d35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
