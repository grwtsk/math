# pow_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "17e02fa58da3d7f0674fd239acf1669b361d648a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 668,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04a898efd80766ef42a94fda3e5fe5315f95c02039f9525142f9753ae6683366.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:781128a0-a4a4-ded0-daf1-77c13a2bffdb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4f25680-b71b-f267-b17f-6b8276c27e2e",
  "kind": "lemma",
  "lexical_name": "pow_monotone",
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
  "slug": "pow-monotone--3f4d8764275e8fff770aa565",
  "source": {
    "blob": "17e02fa58da3d7f0674fd239acf1669b361d648a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 676,
    "line": 668,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Order/Variant04a898efd80766ef42a94fda3e5fe5315f95c02039f9525142f9753ae6683366.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f4d8764275e8fff770aa565ffb4d5ab55a4a914f30eeb6ec1931614e0f50743",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Order/Variant04a898efd80766ef42a94fda3e5fe5315f95c02039f9525142f9753ae6683366.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4f25680-b71b-f267-b17f-6b8276c27e2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 668–676.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_monotone {a : A} (ha : 1 ≤ a) : Monotone (a ^ · : ℕ → A) := by
  have ha' : 0 ≤ a := zero_le_one.trans ha
  intro n m hnm
  simp only
  rw [← cfc_pow_id (R := ℝ) a, ← cfc_pow_id (R := ℝ) a, cfc_le_iff ..]
  rw [CFC.one_le_iff (R := ℝ) a] at ha
  gconvert ha using 2 with x hx
  exact pow_le_pow_right₀ (ha x hx) hnm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Order/Variant04a898efd80766ef42a94fda3e5fe5315f95c02039f9525142f9753ae6683366.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Order/Variant04a898efd80766ef42a94fda3e5fe5315f95c02039f9525142f9753ae6683366.lean#L668).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17e02fa58da3d7f0674fd239acf1669b361d648a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
