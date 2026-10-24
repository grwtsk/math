# lsubtypeDomain_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0371cad9-a9df-9a39-10dc-4b2845956d99",
  "kind": "theorem",
  "lexical_name": "lsubtypeDomain_apply",
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
  "slug": "lsubtypedomain-apply--671725ab5d645780330cc304",
  "source": {
    "blob": "87840a71c3ab2545805001c548ae52df673cfa6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 122,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantb33c90759e19e98ebcb02412c893c09b6bc0e754eb657abf47c18c436d8edb73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:671725ab5d645780330cc304a42d327c341cd253e296746bf8f792b61bc3ffcc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variantb33c90759e19e98ebcb02412c893c09b6bc0e754eb657abf47c18c436d8edb73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0371cad9-a9df-9a39-10dc-4b2845956d99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lsubtypeDomain_apply (f : α →₀ M) :
    (lsubtypeDomain s : (α →₀ M) →ₗ[R] s →₀ M) f = subtypeDomain (fun x => x ∈ s) f :=
  rfl

end LSubtypeDomain

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variantb33c90759e19e98ebcb02412c893c09b6bc0e754eb657abf47c18c436d8edb73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variantb33c90759e19e98ebcb02412c893c09b6bc0e754eb657abf47c18c436d8edb73.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87840a71c3ab2545805001c548ae52df673cfa6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
