# concatFn_length_mem_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c04199b-a06d-852e-41a4-dfe0c07737c1",
  "kind": "lemma",
  "lexical_name": "concatFn_length_mem_Icc",
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
  "slug": "concatfn-length-mem-icc--6de8fbea671aecc02b104725",
  "source": {
    "blob": "9278650f29163c61b2e9c413cfd18700e7c33bae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 89,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant3080295c54c5bb5526308b17cb79e12d01e4217a13ba60b119d4888297d5ed5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6de8fbea671aecc02b104725156ac17b388520690812712dddb271430c7db1db",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant3080295c54c5bb5526308b17cb79e12d01e4217a13ba60b119d4888297d5ed5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c04199b-a06d-852e-41a4-dfe0c07737c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma concatFn_length_mem_Icc {S : Finset (List α)}
    {r : ℕ} {w : Fin r → S} (h0 : ∀ c : S, c.val ≠ []) :
    (concatFn w).length ∈ Finset.Icc r (r * S.sup List.length) := by
  rw [concatFn_length, Finset.mem_Icc]
  constructor
  · -- lower bound
    have : ∑ _, 1 ≤ ∑ i, (w i).val.length :=
      Finset.sum_le_sum (fun i _ => by grind)
    simpa using this
  · -- upper bound
    exact (Finset.sum_le_sum (fun i _ => Finset.le_sup (w i).prop)).trans_eq (by simp)

/-- Auxiliary bound for Kraft–McMillan.

If `S` is a finite uniquely decodable code and `1 ≤ r`, then the `r`-th power of its Kraft sum
is bounded by `r * sup length`:

`(∑ w ∈ S, (1 / D) ^ w.length) ^ r ≤ r * (S.sup List.length)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant3080295c54c5bb5526308b17cb79e12d01e4217a13ba60b119d4888297d5ed5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant3080295c54c5bb5526308b17cb79e12d01e4217a13ba60b119d4888297d5ed5d.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9278650f29163c61b2e9c413cfd18700e7c33bae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
