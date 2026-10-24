# abs_sum_of_nonneg'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e77dc670-30b0-8e25-1317-a331fd8d09ce",
  "kind": "theorem",
  "lexical_name": "abs_sum_of_nonneg'",
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
  "slug": "abs-sum-of-nonneg--f2cc3b75f166370cd73c5185",
  "source": {
    "blob": "80d03ba249f53e8ba5a7d8a0c38dcf485c818cd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 276,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantcb5702a5d705207ed79553cbc3343e146d5cfd089462b767f68e3c6360b5f393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2cc3b75f166370cd73c5185c259a8953739deab498824f00ca7e9ce1928d6f6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Order/Variantcb5702a5d705207ed79553cbc3343e146d5cfd089462b767f68e3c6360b5f393.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e77dc670-30b0-8e25-1317-a331fd8d09ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_sum_of_nonneg' {G : Type*} [LinearOrderedAddCommGroup G] {f : ι → G} {s : Finset ι}
    (hf : ∀ i, 0 ≤ f i) : |∑ i : ι in s, f i| = ∑ i : ι in s, f i := by
  rw [abs_of_nonneg (Finset.sum_nonneg' hf)]
#align finset.abs_sum_of_nonneg' Finset.abs_sum_of_nonneg'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Order/Variantcb5702a5d705207ed79553cbc3343e146d5cfd089462b767f68e3c6360b5f393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantcb5702a5d705207ed79553cbc3343e146d5cfd089462b767f68e3c6360b5f393.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80d03ba249f53e8ba5a7d8a0c38dcf485c818cd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
