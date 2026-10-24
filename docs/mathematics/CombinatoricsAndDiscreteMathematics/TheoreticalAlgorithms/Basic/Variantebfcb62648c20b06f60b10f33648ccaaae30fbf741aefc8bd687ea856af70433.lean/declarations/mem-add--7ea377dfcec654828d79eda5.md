# mem_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f531fe8254e896c15b1b8212a73a5f7bf0bdcc8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 316,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/ebfcb62648c20b06f60b10f33648ccaaae30fbf741aefc8bd687ea856af70433.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1d77fbc-ecd9-220d-47aa-20d19f72bd9d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cbb11fe6-9aa5-200c-9251-3cbb08ccf46c",
  "kind": "theorem",
  "lexical_name": "mem_add",
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
  "slug": "mem-add--7ea377dfcec654828d79eda5",
  "source": {
    "blob": "4f531fe8254e896c15b1b8212a73a5f7bf0bdcc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 316,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantebfcb62648c20b06f60b10f33648ccaaae30fbf741aefc8bd687ea856af70433.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ea377dfcec654828d79eda59c0f780f8a481dba0a30254c78baa221b702b98b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantebfcb62648c20b06f60b10f33648ccaaae30fbf741aefc8bd687ea856af70433.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbb11fe6-9aa5-200c-9251-3cbb08ccf46c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_add {a b : AffineForm} {eps : NoiseAssignment} {va vb : ℝ}
    (ha : mem_affine a eps va) (hb : mem_affine b eps vb) :
    mem_affine (add a b) eps (va + vb) := by
  obtain ⟨erra, herra_bound, hva⟩ := ha
  obtain ⟨errb, herrb_bound, hvb⟩ := hb
  use erra + errb
  constructor
  · -- |erra + errb| ≤ |erra| + |errb| ≤ a.r + b.r
    have h1 : |erra| ≤ (a.r : ℝ) := herra_bound
    have h2 : |errb| ≤ (b.r : ℝ) := herrb_bound
    have h3 : ((add a b).r : ℝ) = a.r + b.r := by simp only [add, Rat.cast_add]
    calc |erra + errb| ≤ |erra| + |errb| := abs_add_le erra errb
      _ ≤ (a.r : ℝ) + (b.r : ℝ) := by linarith
      _ = ((add a b).r : ℝ) := by rw [h3]
  · -- va + vb = evalLinear (add a b) eps + (erra + errb)
    simp only [evalLinear, add, linearSum_zipWithPad_add] at *
    rw [hva, hvb]
    push_cast
    ring

/-- Negation is sound -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantebfcb62648c20b06f60b10f33648ccaaae30fbf741aefc8bd687ea856af70433.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantebfcb62648c20b06f60b10f33648ccaaae30fbf741aefc8bd687ea856af70433.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f531fe8254e896c15b1b8212a73a5f7bf0bdcc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
