# numElems_le_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35e6cac1-9c44-3fb0-a5df-2252c559f25f",
  "kind": "theorem",
  "lexical_name": "numElems_le_iff",
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
  "slug": "numelems-le-iff--fde610bc2a25e65c16ec5b6e",
  "source": {
    "blob": "95251a47322bd316612c968efd43a500fa95bf93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 31,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1612627302f9d949815a6b457aaba78e155ece0096068a89926584a28e0b2539.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fde610bc2a25e65c16ec5b6ed63af4ddfdba3541d24f3b237f8c16c686d5197a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1612627302f9d949815a6b457aaba78e155ece0096068a89926584a28e0b2539.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35e6cac1-9c44-3fb0-a5df-2252c559f25f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem numElems_le_iff {start stop step i} (hstep : 0 < step) :
    (stop - start + step - 1) / step ≤ i ↔ stop ≤ start + step * i :=
  calc (stop - start + step - 1) / step ≤ i
    _ ↔ stop - start + step - 1 < step * i + step := by
      rw [← Nat.lt_succ (n := i), Nat.div_lt_iff_lt_mul hstep, Nat.mul_comm, ← Nat.mul_succ]
    _ ↔ stop - start + step - 1 < step * i + 1 + (step - 1) := by
      rw [Nat.add_right_comm, Nat.add_assoc, Nat.sub_add_cancel hstep]
    _ ↔ stop ≤ start + step * i := by
      rw [Nat.add_sub_assoc hstep, Nat.add_lt_add_iff_right, Nat.lt_succ,
        Nat.sub_le_iff_le_add']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1612627302f9d949815a6b457aaba78e155ece0096068a89926584a28e0b2539.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant1612627302f9d949815a6b457aaba78e155ece0096068a89926584a28e0b2539.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95251a47322bd316612c968efd43a500fa95bf93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
