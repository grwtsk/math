# commGroupWithZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7348d601107508a8df36386b6637c4e4b1c8946bc91e1a88cb4fafd9e85f1fa7",
  "kind": "instance",
  "lexical_name": "commGroupWithZero",
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
  "slug": "commgroupwithzero--21f99d59faf4d005072bdfe3",
  "source": {
    "blob": "c6b4fbe2dade5a84e423c3dc2bb16ffaf3bc3560",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 40,
    "path": "GRWTSK/Algebra/Rat/Variant0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21f99d59faf4d005072bdfe3a6ccf0e02cef91d5539ed18587a9801f49d83eab",
  "verification": {
    "reference": "docs/verification/Algebra/Rat/Variant0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7348d601107508a8df36386b6637c4e4b1c8946bc91e1a88cb4fafd9e85f1fa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance commGroupWithZero : CommGroupWithZero ℚ :=
  { exists_pair_ne := ⟨0, 1, Rat.zero_ne_one⟩
    inv_zero := by
      change Rat.inv 0 = 0
      rw [Rat.inv_def]
      rfl
    mul_inv_cancel := Rat.mul_inv_cancel
    mul_zero := mul_zero
    zero_mul := zero_mul }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Rat/Variant0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Rat/Variant0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6b4fbe2dade5a84e423c3dc2bb16ffaf3bc3560` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
