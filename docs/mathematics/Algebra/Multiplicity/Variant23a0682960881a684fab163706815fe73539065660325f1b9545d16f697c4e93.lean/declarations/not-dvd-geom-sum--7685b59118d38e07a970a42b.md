# not_dvd_geom_sum₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1222001424118d1305f7de553d6d74d3cb8d280b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/23a0682960881a684fab163706815fe73539065660325f1b9545d16f697c4e93.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d7a236ee-cf8b-48a9-ce45-401bc3553020",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b733552-ea55-df4e-4fcc-8facb0059a98",
  "kind": "theorem",
  "lexical_name": "not_dvd_geom_sum₂",
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
  "slug": "not-dvd-geom-sum--7685b59118d38e07a970a42b",
  "source": {
    "blob": "1222001424118d1305f7de553d6d74d3cb8d280b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 70,
    "path": "GRWTSK/Algebra/Multiplicity/Variant23a0682960881a684fab163706815fe73539065660325f1b9545d16f697c4e93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7685b59118d38e07a970a42b7e2dd9a03a498e98be3803b21ab4f650e0da5170",
  "verification": {
    "reference": "docs/verification/Algebra/Multiplicity/Variant23a0682960881a684fab163706815fe73539065660325f1b9545d16f697c4e93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b733552-ea55-df4e-4fcc-8facb0059a98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_dvd_geom_sum₂ {p : R} (hp : Prime p) (hxy : p ∣ x - y) (hx : ¬p ∣ x) (hn : ¬p ∣ n) :
    ¬p ∣ ∑ i ∈ range n, x ^ i * y ^ (n - 1 - i) := fun h =>
  hx <|
    hp.dvd_of_dvd_pow <| (hp.dvd_or_dvd <| (dvd_geom_sum₂_iff_of_dvd_sub' hxy).mp h).resolve_left hn

variable {p : ℕ} (a b)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Multiplicity/Variant23a0682960881a684fab163706815fe73539065660325f1b9545d16f697c4e93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Multiplicity/Variant23a0682960881a684fab163706815fe73539065660325f1b9545d16f697c4e93.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1222001424118d1305f7de553d6d74d3cb8d280b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
