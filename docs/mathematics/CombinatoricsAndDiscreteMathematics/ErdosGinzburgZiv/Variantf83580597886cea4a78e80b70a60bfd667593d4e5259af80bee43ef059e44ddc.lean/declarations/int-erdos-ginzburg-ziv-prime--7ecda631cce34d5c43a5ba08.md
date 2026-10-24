# Int.erdos_ginzburg_ziv_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "846c398bc8e5b925a765d2178949dbd29a804452",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f83580597886cea4a78e80b70a60bfd667593d4e5259af80bee43ef059e44ddc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1fb2e29f-4c78-d431-50f2-04cf653d3101",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0324b9f2-bf6e-ec45-259d-e5a8bcb06c1b",
  "kind": "theorem",
  "lexical_name": "Int.erdos_ginzburg_ziv_prime",
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
  "slug": "int-erdos-ginzburg-ziv-prime--7ecda631cce34d5c43a5ba08",
  "source": {
    "blob": "846c398bc8e5b925a765d2178949dbd29a804452",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 92,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantf83580597886cea4a78e80b70a60bfd667593d4e5259af80bee43ef059e44ddc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ecda631cce34d5c43a5ba085c312069b502f04356c3a0c10f72d8f9405fe7d1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantf83580597886cea4a78e80b70a60bfd667593d4e5259af80bee43ef059e44ddc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0324b9f2-bf6e-ec45-259d-e5a8bcb06c1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem Int.erdos_ginzburg_ziv_prime (a : ι → ℤ) (hs : #s = 2 * p - 1) :
    ∃ t ⊆ s, #t = p ∧ ↑p ∣ ∑ i ∈ t, a i := by
  simpa [← Int.cast_sum, ZMod.intCast_zmod_eq_zero_iff_dvd]
    using ZMod.erdos_ginzburg_ziv_prime (Int.cast ∘ a) hs

end prime

section composite
variable {n : ℕ} {s : Finset ι}

/-- The **Erdős–Ginzburg–Ziv theorem** for `ℤ`.

Any sequence of at least `2 * n - 1` elements of `ℤ` contains a subsequence of `n` elements whose
sum is divisible by `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantf83580597886cea4a78e80b70a60bfd667593d4e5259af80bee43ef059e44ddc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantf83580597886cea4a78e80b70a60bfd667593d4e5259af80bee43ef059e44ddc.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `846c398bc8e5b925a765d2178949dbd29a804452` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
