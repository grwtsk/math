# fastFibAux_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d27137410eb195d6f57290a6908e7f42df58a75",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 197,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dbfe6113-9f5b-2dcd-6c72-e271afefbfb7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b0b8787-39b0-9fba-0f9e-181eb6c29266",
  "kind": "theorem",
  "lexical_name": "fastFibAux_eq",
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
  "slug": "fastfibaux-eq--f3d939fdf5812ee8bb0bd8ec",
  "source": {
    "blob": "4d27137410eb195d6f57290a6908e7f42df58a75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 197,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3d939fdf5812ee8bb0bd8ece53f5270fe7eb485a039a64bc93d969be273cf7c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b0b8787-39b0-9fba-0f9e-181eb6c29266`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fastFibAux_eq (n : ℕ) : fastFibAux n = (fib n, fib (n + 1)) := by
  refine Nat.binaryRec ?_ ?_ n
  · simp [fastFibAux]
  · rintro (_ | _) n' ih <;>
      simp only [fastFibAux_bit_false, fastFibAux_bit_true, congr_arg Prod.fst ih,
        congr_arg Prod.snd ih, Prod.mk_inj] <;>
      simp [bit, fib_two_mul, fib_two_mul_add_one, fib_two_mul_add_two]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d27137410eb195d6f57290a6908e7f42df58a75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
