# Summable.mul_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:badbd405-ede5-aa5c-ca49-fd88ddcf2d88",
  "kind": "theorem",
  "lexical_name": "Summable.mul_norm",
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
  "slug": "summable-mul-norm--99b54771504df1a89025f12f",
  "source": {
    "blob": "dc5c8874d8b006e664f9e1978f6c30666a6f41bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 43,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant3bca8a8af0ae9ab5c4110fdaeccaaa79a361f6cb972794dda75fbdd4a0d2ce8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99b54771504df1a89025f12f320a6ffa6682ccbca2c28ae5abd1f41b0809d6d6",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/InfiniteSum/Variant3bca8a8af0ae9ab5c4110fdaeccaaa79a361f6cb972794dda75fbdd4a0d2ce8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:badbd405-ede5-aa5c-ca49-fd88ddcf2d88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Summable.mul_norm {f : ι → R} {g : ι' → R} (hf : Summable fun x => ‖f x‖)
    (hg : Summable fun x => ‖g x‖) : Summable fun x : ι × ι' => ‖f x.1 * g x.2‖ :=
  .of_nonneg_of_le (fun _ ↦ norm_nonneg _)
    (fun x => norm_mul_le (f x.1) (g x.2))
    (hf.mul_of_nonneg hg (fun x => norm_nonneg <| f x) fun x => norm_nonneg <| g x :)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/InfiniteSum/Variant3bca8a8af0ae9ab5c4110fdaeccaaa79a361f6cb972794dda75fbdd4a0d2ce8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant3bca8a8af0ae9ab5c4110fdaeccaaa79a361f6cb972794dda75fbdd4a0d2ce8b.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc5c8874d8b006e664f9e1978f6c30666a6f41bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
