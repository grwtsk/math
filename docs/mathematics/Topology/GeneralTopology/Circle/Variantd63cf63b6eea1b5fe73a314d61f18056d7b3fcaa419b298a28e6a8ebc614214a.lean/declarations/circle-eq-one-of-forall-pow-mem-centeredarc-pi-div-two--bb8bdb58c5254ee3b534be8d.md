# Circle.eq_one_of_forall_pow_mem_centeredArc_pi_div_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bbe3b0b7b766aa8eab8ed5552fe35d2be9688f76",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 483,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d63cf63b6eea1b5fe73a314d61f18056d7b3fcaa419b298a28e6a8ebc614214a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e45b3693-adef-2310-dc50-e86c34dec3ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4fa25ee5-7080-03cb-7ba2-b21e8f0ec00c",
  "kind": "theorem",
  "lexical_name": "Circle.eq_one_of_forall_pow_mem_centeredArc_pi_div_two",
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
  "slug": "circle-eq-one-of-forall-pow-mem-centeredarc-pi-div-two--bb8bdb58c5254ee3b534be8d",
  "source": {
    "blob": "bbe3b0b7b766aa8eab8ed5552fe35d2be9688f76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 497,
    "line": 483,
    "path": "GRWTSK/Topology/GeneralTopology/Circle/Variantd63cf63b6eea1b5fe73a314d61f18056d7b3fcaa419b298a28e6a8ebc614214a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb8bdb58c5254ee3b534be8d840864ffb1ed1248a6f5bfeb4ff2fd368f540b1c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Circle/Variantd63cf63b6eea1b5fe73a314d61f18056d7b3fcaa419b298a28e6a8ebc614214a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fa25ee5-7080-03cb-7ba2-b21e8f0ec00c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 483–497.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Circle.eq_one_of_forall_pow_mem_centeredArc_pi_div_two {z : Circle}
    (hz : ∀ n > 0, z ^ n ∈ centeredArc (π / 2)) : z = 1 := by
  have hz1 : z ∈ centeredArc (π / 2) := by simpa using hz 1
  have h (n : ℕ) : z ∈ centeredArc (π / 2 ^ (n + 1)) := by
    induction n with
    | zero => simpa using hz1
    | succ n ih =>
        simpa [div_div, ← pow_succ'] using mem_centeredArc_div
          (div_le_self pi_nonneg one_le_two) (by simpa) (hz (2 ^ (n + 1)) (by positivity))
  simpa [h] using Set.ext_iff.mp hasBasis_centeredArc_div_two_pow.ker z

/- TODO: this generalizes to a large class of groups, but requires an open mapping theorem for
topological groups to show the `n`th power map is open (see https://www.mathematik.tu-darmstadt.de/media/mathematik/forschung/preprint/preprints/2480.pdf
and https://www.math.uwaterloo.ca/~cgodsil/pdfs/topology/topgr.pdf), and discreteness of the
kernel (see https://gemini.google.com/share/6e9ab4abcb95). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Circle/Variantd63cf63b6eea1b5fe73a314d61f18056d7b3fcaa419b298a28e6a8ebc614214a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Circle/Variantd63cf63b6eea1b5fe73a314d61f18056d7b3fcaa419b298a28e6a8ebc614214a.lean#L483).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbe3b0b7b766aa8eab8ed5552fe35d2be9688f76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
