# withSimpTheoremInfos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2cc37b30f80af3b656b949c6e9685259abd1784d101fa615b9e27eae45c11d1",
  "kind": "def",
  "lexical_name": "withSimpTheoremInfos",
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
  "slug": "withsimptheoreminfos--1fbf461ce6313106e86a057f",
  "source": {
    "blob": "e09c4bdf3e81a14f1d05ebb37a524bbb80368faf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant3e84fcdc00aed39d17f193a8a15ac732defe4949a34eccdea317a3b98cc729cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1fbf461ce6313106e86a057f2f23e78a79ce41035b3aa83e1feaaefa389212cf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant3e84fcdc00aed39d17f193a8a15ac732defe4949a34eccdea317a3b98cc729cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2cc37b30f80af3b656b949c6e9685259abd1784d101fa615b9e27eae45c11d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def withSimpTheoremInfos (ty : Expr) (k : SimpTheoremInfo → MetaM α) : MetaM (Array α) :=
  withReducible do
    let e ← preprocess (← mkSorry ty true) ty (inv := false) (isGlobal := true)
    e.toArray.mapM fun (_, ty') => do
      forallTelescopeReducing ty' fun hyps eq => do
        let some (_, lhs, rhs) := eq.eq? | throwError "not an equality {eq}"
        k { hyps, lhs, rhs }

/-- When true, the `simpNF` linter sets `backward.isDefEq.respectTransparency true` when
comparing expressions in `isSimpEq`. This is stricter and will flag more simp lemmas as
not in simp-normal form, in particular those where the left-hand side is not in normal form
up to reducible defeq (e.g. lemmas involving type synonyms or bundled carrier types).

Defaults to `false` to preserve the historical linter behavior, which uses
`backward.isDefEq.respectTransparency false` to avoid false positives when `simp`/`dsimp`
changes implicit arguments by unfolding carrier types in bundled structures.

To find simp lemmas that fail with the stricter check, use:
```
set_option linter.simpNF.respectTransparency true in
#lint only simpNF
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant3e84fcdc00aed39d17f193a8a15ac732defe4949a34eccdea317a3b98cc729cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant3e84fcdc00aed39d17f193a8a15ac732defe4949a34eccdea317a3b98cc729cb.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e09c4bdf3e81a14f1d05ebb37a524bbb80368faf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
