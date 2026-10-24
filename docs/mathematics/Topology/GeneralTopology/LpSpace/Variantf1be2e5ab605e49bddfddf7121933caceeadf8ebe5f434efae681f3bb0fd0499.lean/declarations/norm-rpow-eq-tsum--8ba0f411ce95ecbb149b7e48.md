# norm_rpow_eq_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95065bf79d4606e53b195edd84b9761a1242ddcc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 379,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f1be2e5ab605e49bddfddf7121933caceeadf8ebe5f434efae681f3bb0fd0499.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a4d15e96-b518-98e4-a90c-c48b39474072",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d66c7455-3b89-6366-8792-828a591402cd",
  "kind": "theorem",
  "lexical_name": "norm_rpow_eq_tsum",
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
  "slug": "norm-rpow-eq-tsum--8ba0f411ce95ecbb149b7e48",
  "source": {
    "blob": "95065bf79d4606e53b195edd84b9761a1242ddcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 379,
    "path": "GRWTSK/Topology/GeneralTopology/LpSpace/Variantf1be2e5ab605e49bddfddf7121933caceeadf8ebe5f434efae681f3bb0fd0499.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ba0f411ce95ecbb149b7e48657ef3b626e9c9187972aa793d5ff9f1c8cacc77",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LpSpace/Variantf1be2e5ab605e49bddfddf7121933caceeadf8ebe5f434efae681f3bb0fd0499.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d66c7455-3b89-6366-8792-828a591402cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_rpow_eq_tsum (hp : 0 < p.toReal) (f : lp E p) :
    ‖f‖ ^ p.toReal = ∑' i, ‖f i‖ ^ p.toReal := by
  rw [norm_eq_tsum_rpow hp, ← Real.rpow_mul]
  · field_simp
  apply tsum_nonneg
  intro i
  calc
    (0 : ℝ) = (0 : ℝ) ^ p.toReal := by rw [Real.zero_rpow hp.ne']
    _ ≤ _ := by gcongr; apply norm_nonneg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LpSpace/Variantf1be2e5ab605e49bddfddf7121933caceeadf8ebe5f434efae681f3bb0fd0499.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LpSpace/Variantf1be2e5ab605e49bddfddf7121933caceeadf8ebe5f434efae681f3bb0fd0499.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95065bf79d4606e53b195edd84b9761a1242ddcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
