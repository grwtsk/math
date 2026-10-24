# stabilizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18b35a76b21a2e17b9c6950fe29757dc8ae7de13ad63ad60ac9cdc781a36bfc2",
  "kind": "def",
  "lexical_name": "stabilizer",
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
  "slug": "stabilizer--cb61560f0a73ee78e3abfa0f",
  "source": {
    "blob": "d85f2ddaf80287ce7eb5aadc1aa740424c96c8cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 202,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb61560f0a73ee78e3abfa0f18e7f3f08df81b754c3773728b5adfd57d6f3682",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:18b35a76b21a2e17b9c6950fe29757dc8ae7de13ad63ad60ac9cdc781a36bfc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def stabilizer (a : α) : Subgroup G :=
  { Stabilizer.submonoid G a with
    inv_mem' := fun {m} (ha : m • a = a) => show m⁻¹ • a = a by rw [inv_smul_eq_iff, ha] }
#align mul_action.stabilizer MulAction.stabilizer
#align add_action.stabilizer AddAction.stabilizer

variable {G}

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantc2af4d4c1fe940faa4952983fbab87a0f66c7ce572d52fd70c7f62226a38624b.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d85f2ddaf80287ce7eb5aadc1aa740424c96c8cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
