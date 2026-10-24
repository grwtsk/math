# floorDiv_le_ceilDiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d69b0d36-d18b-63f9-4337-b33e2e9ce9e3",
  "kind": "lemma",
  "lexical_name": "floorDiv_le_ceilDiv",
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
  "slug": "floordiv-le-ceildiv--4d288d107e81ab234359c196",
  "source": {
    "blob": "30f18045c9bd0c81459a670605c94a11c58c7383",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 138,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d288d107e81ab234359c196d60bb5e94fd06443986a78cefda87320c3485125",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d69b0d36-d18b-63f9-4337-b33e2e9ce9e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma floorDiv_le_ceilDiv : b ⌊/⌋ a ≤ b ⌈/⌉ a := by
  obtain ha | ha := le_or_gt a 0
  · simp [ha]
  · exact le_of_smul_le_smul_left ((smul_floorDiv_le ha).trans <| le_smul_ceilDiv ha) ha

end LinearOrderedAddCommMonoid

section OrderedSemiring
variable [Semiring α] [PartialOrder α] [AddCommMonoid β] [PartialOrder β] [MulActionWithZero α β]

section FloorDiv
variable [FloorDiv α β] {a : α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Div/Variant1cc2ca169d8c0ac653bf965ee3051509492845878fcbc0d9acad38fbfe8b1d37.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30f18045c9bd0c81459a670605c94a11c58c7383` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
