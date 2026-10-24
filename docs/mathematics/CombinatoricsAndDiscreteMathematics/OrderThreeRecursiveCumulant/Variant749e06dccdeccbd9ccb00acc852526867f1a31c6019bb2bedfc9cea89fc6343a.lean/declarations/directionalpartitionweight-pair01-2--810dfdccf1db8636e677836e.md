# directionalPartitionWeight_pair01_2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8064ebe1-773e-f0d4-ea0b-02b37c4e8558",
  "kind": "theorem",
  "lexical_name": "directionalPartitionWeight_pair01_2",
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
  "slug": "directionalpartitionweight-pair01-2--810dfdccf1db8636e677836e",
  "source": {
    "blob": "b43fa466f0b04b409e6b38a392ded858076abf54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 236,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant749e06dccdeccbd9ccb00acc852526867f1a31c6019bb2bedfc9cea89fc6343a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:810dfdccf1db8636e677836e0e4267a139a6a6410a346cf140ae848e9d4c1c71",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant749e06dccdeccbd9ccb00acc852526867f1a31c6019bb2bedfc9cea89fc6343a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8064ebe1-773e-f0d4-ea0b-02b37c4e8558`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem directionalPartitionWeight_pair01_2
    (κ : DirectionCumulantFamily E R)
    (directions : Fin 3 → E) :
    directionalPartitionWeight κ directions
        pairPartition01_2 =
      κ 2 ![directions 0, directions 1] *
        κ 1 (fun _ : Fin 1 => directions 2) := by
  classical
  unfold directionalPartitionWeight partitionWeight
  rw [pairPartition01_2_parts]
  have hne : ({0, 1} : Finset (Fin 3)) ≠ {2} := by decide
  simp [blocks01_2, blockCumulantFunctional, hne, blockCumulantValue_singleton]

/-- Weight of the 02|1 partition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant749e06dccdeccbd9ccb00acc852526867f1a31c6019bb2bedfc9cea89fc6343a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant749e06dccdeccbd9ccb00acc852526867f1a31c6019bb2bedfc9cea89fc6343a.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b43fa466f0b04b409e6b38a392ded858076abf54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
