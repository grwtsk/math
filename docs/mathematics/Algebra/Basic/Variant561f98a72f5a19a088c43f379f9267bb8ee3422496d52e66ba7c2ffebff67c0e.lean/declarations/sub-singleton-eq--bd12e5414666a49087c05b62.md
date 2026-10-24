# sub_singleton_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d55aec2-927e-c785-c9f1-9c72d5413d61",
  "kind": "theorem",
  "lexical_name": "sub_singleton_eq",
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
  "slug": "sub-singleton-eq--bd12e5414666a49087c05b62",
  "source": {
    "blob": "3929fe9a220166f0cf1a134ce016c253851db68f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 335,
    "path": "GRWTSK/Algebra/Basic/Variant561f98a72f5a19a088c43f379f9267bb8ee3422496d52e66ba7c2ffebff67c0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd12e5414666a49087c05b62c9656b1c907b3dfeae0c5d434848d65350740949",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant561f98a72f5a19a088c43f379f9267bb8ee3422496d52e66ba7c2ffebff67c0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d55aec2-927e-c785-c9f1-9c72d5413d61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sub_singleton_eq (a : A) (r : R) : σ a - {r} = σ (a - ↑ₐ r) := by
  simpa only [neg_sub, neg_eq] using congr_arg Neg.neg (singleton_sub_eq a r)

end ScalarRing

section ScalarSemifield

variable {R : Type u} {A : Type v} [Semifield R] [Ring A] [Algebra R A]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant561f98a72f5a19a088c43f379f9267bb8ee3422496d52e66ba7c2ffebff67c0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant561f98a72f5a19a088c43f379f9267bb8ee3422496d52e66ba7c2ffebff67c0e.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3929fe9a220166f0cf1a134ce016c253851db68f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
