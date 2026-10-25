# baseRead

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd59681abc7a6dc98e00e4ff0e651cd1606570d17e1274220b30c66ed2ab8127",
  "kind": "def",
  "lexical_name": "baseRead",
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
  "slug": "baseread--7fb31656e56c6ae18c1af8f7",
  "source": {
    "blob": "a6e726c78749d44f68089c5b9fe2fd083816dd1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 709,
    "line": 696,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant7caa2c70adb09acf767ba6838759eb318e726a4f4f7bdd7da4d7923f211b7cb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fb31656e56c6ae18c1af8f7efdf238c6432c8c8c23da0aedef807e6ad22ffbe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant7caa2c70adb09acf767ba6838759eb318e726a4f4f7bdd7da4d7923f211b7cb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd59681abc7a6dc98e00e4ff0e651cd1606570d17e1274220b30c66ed2ab8127`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 696–709.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def baseRead (h : HasType P Γ M T)
    (v : ActiveLayer P C (Ω.profile (T.subst e.images).normalForm) →
      Value (hw := hw) Ω C hno (T.subst e.images).normalForm) :
    Candidate Ω (M.subst e.images).normalForm :=
  if _hm : Ω.profile (M.subst e.images).normalForm ∈ C then
    if hs : ∃ s : S, T = .sort s ∧ ({s} : Set S) ∈ C then
      if ha : ActiveLayer P C (Ω.profile (T.subst e.images).normalForm) then
        (RawValue.base Ω C hno (v ha).val) (e.actualExpression (hs.choose_spec.1 ▸ h))
      else ⟨_, Candidates.top_candidate⟩
    else ⟨_, Candidates.top_candidate⟩
  else ⟨_, Candidates.top_candidate⟩

open Classical in
/-- Pair a fitting value family with the source base-read candidate clause. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant7caa2c70adb09acf767ba6838759eb318e726a4f4f7bdd7da4d7923f211b7cb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant7caa2c70adb09acf767ba6838759eb318e726a4f4f7bdd7da4d7923f211b7cb9.lean#L696).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6e726c78749d44f68089c5b9fe2fd083816dd1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
