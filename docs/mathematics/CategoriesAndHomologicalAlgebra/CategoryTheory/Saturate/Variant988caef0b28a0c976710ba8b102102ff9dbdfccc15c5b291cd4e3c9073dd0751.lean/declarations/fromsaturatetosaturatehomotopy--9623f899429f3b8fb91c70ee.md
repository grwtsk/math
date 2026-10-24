# fromSaturateToSaturateHomotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:339d1a2199c5ba12000adbbc3dd7776d2014e2306456af329f7f9047dbbcf028",
  "kind": "def",
  "lexical_name": "fromSaturateToSaturateHomotopy",
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
  "slug": "fromsaturatetosaturatehomotopy--9623f899429f3b8fb91c70ee",
  "source": {
    "blob": "fb383fe2663bc0c2e306451b044cd4f828208ebc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 132,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Saturate/Variant988caef0b28a0c976710ba8b102102ff9dbdfccc15c5b291cd4e3c9073dd0751.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9623f899429f3b8fb91c70eeb4e3653527d55e160155d691a301016fe02838ab",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Saturate/Variant988caef0b28a0c976710ba8b102102ff9dbdfccc15c5b291cd4e3c9073dd0751.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:339d1a2199c5ba12000adbbc3dd7776d2014e2306456af329f7f9047dbbcf028`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fromSaturateToSaturateHomotopy : PreOneHypercover.Homotopy
    (E.fromSaturateOfHasPullbacks.comp E.toSaturateOfHasPullbacks) (.id _) where
  H i := ⟨pullback (E.f i) (E.f i), pullback.fst _ _, pullback.snd _ _, pullback.condition⟩
  a i := pullback.diagonal (E.f i)
  wl i := by simp
  wr i := by simp

/-- If the pre-`0`-hypercover `E` has pairwise pullbacks, then the multifork associated to the
full saturated pre-`1`-hypercover is exact if and only if the minimal one given by taking
the pairwise pullbacks is exact. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Saturate/Variant988caef0b28a0c976710ba8b102102ff9dbdfccc15c5b291cd4e3c9073dd0751.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Saturate/Variant988caef0b28a0c976710ba8b102102ff9dbdfccc15c5b291cd4e3c9073dd0751.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb383fe2663bc0c2e306451b044cd4f828208ebc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
