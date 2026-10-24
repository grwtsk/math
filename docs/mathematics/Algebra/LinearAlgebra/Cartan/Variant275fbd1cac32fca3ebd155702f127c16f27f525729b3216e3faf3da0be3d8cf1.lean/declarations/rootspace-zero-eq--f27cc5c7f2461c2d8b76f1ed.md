# rootSpace_zero_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7940f3124b5bfdedaee336a9b50c1fef8819505f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 240,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7bf3212-dfe2-bac6-15e5-cd56a4db1526",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd83067c-a5b0-c91c-47ce-c759180ea3c7",
  "kind": "theorem",
  "lexical_name": "rootSpace_zero_eq",
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
  "slug": "rootspace-zero-eq--f27cc5c7f2461c2d8b76f1ed",
  "source": {
    "blob": "7940f3124b5bfdedaee336a9b50c1fef8819505f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 240,
    "path": "GRWTSK/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f27cc5c7f2461c2d8b76f1ed11726692a053fef8070606eba35a32e138352691",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd83067c-a5b0-c91c-47ce-c759180ea3c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rootSpace_zero_eq (H : LieSubalgebra R L) [H.IsCartanSubalgebra] [IsNoetherian R L] :
    rootSpace H 0 = H.toLieSubmodule := by
  rw [← LieSubmodule.toSubmodule_inj, ← coe_zeroRootSubalgebra,
    zeroRootSubalgebra_eq_of_is_cartan R L H, LieSubalgebra.coe_toLieSubmodule]

variable {R L H}
variable [H.IsCartanSubalgebra] [IsNoetherian R L] (α : H → R)

/-- Given a root `α` relative to a Cartan subalgebra `H`, this is the span of all products of
an element of the `α` root space and an element of the `-α` root space. Informally it is often
denoted `⁅H(α), H(-α)⁆`.

If the Killing form is non-degenerate and the coefficients are a perfect field, this space is
one-dimensional. See `LieAlgebra.IsKilling.coe_corootSpace_eq_span_singleton` and
`LieAlgebra.IsKilling.coe_corootSpace_eq_span_singleton'`.

Note that the name "coroot space" is not standard as this space does not seem to have a name in the
informal literature. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Cartan/Variant275fbd1cac32fca3ebd155702f127c16f27f525729b3216e3faf3da0be3d8cf1.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7940f3124b5bfdedaee336a9b50c1fef8819505f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
