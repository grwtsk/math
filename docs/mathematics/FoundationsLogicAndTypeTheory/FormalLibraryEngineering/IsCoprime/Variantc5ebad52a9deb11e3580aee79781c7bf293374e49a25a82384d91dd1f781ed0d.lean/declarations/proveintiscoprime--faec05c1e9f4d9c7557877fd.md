# proveIntIsCoprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f7f24945f26082458908a8ab5fc44b25e2732c4ecba690a8996e1f5ef424e251",
  "kind": "def",
  "lexical_name": "proveIntIsCoprime",
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
  "slug": "proveintiscoprime--faec05c1e9f4d9c7557877fd",
  "source": {
    "blob": "0c15e329fd4ca16c5ffb99961775cbc067dd07df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IsCoprime/Variantc5ebad52a9deb11e3580aee79781c7bf293374e49a25a82384d91dd1f781ed0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:faec05c1e9f4d9c7557877fdc3ab79b42bac5940634ac21834d278cf0f294eb2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IsCoprime/Variantc5ebad52a9deb11e3580aee79781c7bf293374e49a25a82384d91dd1f781ed0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f7f24945f26082458908a8ab5fc44b25e2732c4ecba690a8996e1f5ef424e251`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def proveIntIsCoprime (ex ey : Q(ℤ)) : Q(IsCoprime $ex $ey) ⊕ Q(¬ IsCoprime $ex $ey) :=
  let ⟨ed, pf⟩ := proveIntGCD ex ey
  if ed.natLit! = 1 then
    have pf' : Q(Int.gcd $ex $ey = 1) := pf
    Sum.inl q(Int.isCoprime_iff_gcd_eq_one.mpr $pf')
  else
    have h : Q(Nat.beq $ed 1 = false) := (q(Eq.refl false) : Expr)
    Sum.inr q(int_not_isCoprime_helper $ex $ey $ed $pf $h)

/-- Evaluates the `IsCoprime` predicate over `ℤ`. -/
@[norm_num IsCoprime (_ : ℤ) (_ : ℤ)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IsCoprime/Variantc5ebad52a9deb11e3580aee79781c7bf293374e49a25a82384d91dd1f781ed0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IsCoprime/Variantc5ebad52a9deb11e3580aee79781c7bf293374e49a25a82384d91dd1f781ed0d.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c15e329fd4ca16c5ffb99961775cbc067dd07df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
