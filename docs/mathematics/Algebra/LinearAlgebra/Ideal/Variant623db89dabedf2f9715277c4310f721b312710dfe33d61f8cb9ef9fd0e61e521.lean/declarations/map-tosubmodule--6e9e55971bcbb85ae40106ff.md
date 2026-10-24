# map_toSubmodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c73d43e7-1f22-6966-7ff5-ad3661d9094b",
  "kind": "theorem",
  "lexical_name": "map_toSubmodule",
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
  "slug": "map-tosubmodule--6e9e55971bcbb85ae40106ff",
  "source": {
    "blob": "a81eb1da715dc2870d83cb7dd514f54dd18623d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 180,
    "path": "GRWTSK/Algebra/LinearAlgebra/Ideal/Variant623db89dabedf2f9715277c4310f721b312710dfe33d61f8cb9ef9fd0e61e521.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e9e55971bcbb85ae40106ffb5f37af071132b84a106ce5c20fd1775a00c9ece",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Ideal/Variant623db89dabedf2f9715277c4310f721b312710dfe33d61f8cb9ef9fd0e61e521.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c73d43e7-1f22-6966-7ff5-ad3661d9094b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_toSubmodule (h : ↑(map f I) = f '' I) :
    LieSubmodule.toSubmodule (map f I) = (LieSubmodule.toSubmodule I).map (f : L →ₗ[R] L') := by
  rw [SetLike.ext'_iff, LieSubmodule.coe_toSubmodule, h, Submodule.map_coe]; rfl

@[deprecated (since := "2024-12-30")] alias map_coeSubmodule := map_toSubmodule

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Ideal/Variant623db89dabedf2f9715277c4310f721b312710dfe33d61f8cb9ef9fd0e61e521.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Ideal/Variant623db89dabedf2f9715277c4310f721b312710dfe33d61f8cb9ef9fd0e61e521.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a81eb1da715dc2870d83cb7dd514f54dd18623d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
