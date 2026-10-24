# concaveOn_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5809d4ce-c907-e2f5-0265-be45345927c4",
  "kind": "lemma",
  "lexical_name": "concaveOn_rpow",
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
  "slug": "concaveon-rpow--6141f80c765c4828d5509fc8",
  "source": {
    "blob": "4b5bad2ebfef011f4dc101ac6fa8c19a5233ddb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 97,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Pow/Varianta467100e7ec2b6680f1ad17ebcfdb5979d764252cd112513b12422986860bf03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6141f80c765c4828d5509fc87407db05ab4e1e33183f613d3b064628041717b7",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Pow/Varianta467100e7ec2b6680f1ad17ebcfdb5979d764252cd112513b12422986860bf03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5809d4ce-c907-e2f5-0265-be45345927c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma concaveOn_rpow {p : ℝ} (hp₀ : 0 ≤ p) (hp₁ : p ≤ 1) :
    ConcaveOn ℝ (Set.Ici 0) fun x : ℝ ↦ x ^ p := by
  by_cases hp : p = 0
  case pos => exact ⟨convex_Ici 0, fun _ _ _ _ _ _ _ _ hab => by simp [hp, hab]⟩
  case neg =>
    push_neg at hp
    by_cases hp' : p = 1
    case pos => exact ⟨convex_Ici 0, by simp [hp']⟩
    case neg =>
      push_neg at hp'
      exact (strictConcaveOn_rpow (by positivity) (lt_of_le_of_ne hp₁ hp')).concaveOn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Pow/Varianta467100e7ec2b6680f1ad17ebcfdb5979d764252cd112513b12422986860bf03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Pow/Varianta467100e7ec2b6680f1ad17ebcfdb5979d764252cd112513b12422986860bf03.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b5bad2ebfef011f4dc101ac6fa8c19a5233ddb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
