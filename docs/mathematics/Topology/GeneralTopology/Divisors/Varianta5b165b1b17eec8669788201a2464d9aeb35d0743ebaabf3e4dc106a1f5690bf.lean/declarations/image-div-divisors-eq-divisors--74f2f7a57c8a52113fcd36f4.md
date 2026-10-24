# image_div_divisors_eq_divisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f65f7b3-1cb2-0d89-d1b6-f64402baff92",
  "kind": "theorem",
  "lexical_name": "image_div_divisors_eq_divisors",
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
  "slug": "image-div-divisors-eq-divisors--74f2f7a57c8a52113fcd36f4",
  "source": {
    "blob": "d5c9e5d2d965db5c04daffc92ac6b5dda71a6f10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 558,
    "line": 552,
    "path": "GRWTSK/Topology/GeneralTopology/Divisors/Varianta5b165b1b17eec8669788201a2464d9aeb35d0743ebaabf3e4dc106a1f5690bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74f2f7a57c8a52113fcd36f434c377d58165b3991a4097b5b6f83d8b1549ffb4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Divisors/Varianta5b165b1b17eec8669788201a2464d9aeb35d0743ebaabf3e4dc106a1f5690bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f65f7b3-1cb2-0d89-d1b6-f64402baff92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 552–558.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_div_divisors_eq_divisors (n : ℕ) :
    image (fun x : ℕ => n / x) n.divisors = n.divisors := by
  conv_rhs =>
    rw [← image_fst_divisorsAntidiagonal, ← map_div_left_divisors, map_eq_image, image_image]
  rfl

@[to_additive (attr := simp) sum_div_divisors]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Divisors/Varianta5b165b1b17eec8669788201a2464d9aeb35d0743ebaabf3e4dc106a1f5690bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Divisors/Varianta5b165b1b17eec8669788201a2464d9aeb35d0743ebaabf3e4dc106a1f5690bf.lean#L552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5c9e5d2d965db5c04daffc92ac6b5dda71a6f10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
