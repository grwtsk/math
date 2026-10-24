# maxPrimeFac_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0f72a9c-896f-2a92-8c82-dcac20584fa7",
  "kind": "lemma",
  "lexical_name": "maxPrimeFac_mul",
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
  "slug": "maxprimefac-mul--e9979422d8bb69d051cf1879",
  "source": {
    "blob": "d70a8d34a5886f0e983c63f51d6efc87e8e244c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 101,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant213f53adb9a1bce2492563ae9e2bd815a5c7a39e1da953023db9a4f84decae04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9979422d8bb69d051cf1879bccc85cd6e876d640821b55bf06b58ba1a7b8ba9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant213f53adb9a1bce2492563ae9e2bd815a5c7a39e1da953023db9a4f84decae04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0f72a9c-896f-2a92-8c82-dcac20584fa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma maxPrimeFac_mul (hm : m ≠ 0) (hn : n ≠ 0) :
    maxPrimeFac (m * n) = max (maxPrimeFac m) (maxPrimeFac n) := by
  obtain rfl | hm : m = 1 ∨ 1 < m := by lia
  · simp
    lia
  obtain rfl | hn : n = 1 ∨ 1 < n := by lia
  · simp
    lia
  refine eq_of_forall_ge_iff fun c ↦ ?_
  simp +contextual [maxPrimeFac_le_iff, one_lt_mul'' hm hn, Nat.Prime.dvd_mul, or_imp,
    forall_and, *]

/-- The greatest prime factor of a power with nonzero exponent is the greatest prime factor of
its base. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant213f53adb9a1bce2492563ae9e2bd815a5c7a39e1da953023db9a4f84decae04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MaxPrimeFac/Variant213f53adb9a1bce2492563ae9e2bd815a5c7a39e1da953023db9a4f84decae04.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d70a8d34a5886f0e983c63f51d6efc87e8e244c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
