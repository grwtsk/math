# Hypercube.pointOfIndex_two_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:281a5f7b-278f-bc34-7b40-0a80bdaec747",
  "kind": "theorem",
  "lexical_name": "Hypercube.pointOfIndex_two_mul",
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
  "slug": "hypercube-pointofindex-two-mul--51ce9d011ce9702b14d71df1",
  "source": {
    "blob": "3ef0d6c9254a5dc0b432c74de4609c03b090bf15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 144,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51ce9d011ce9702b14d71df19a05b74ed08448ef9e45430a6994a17474f336eb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:281a5f7b-278f-bc34-7b40-0a80bdaec747`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Hypercube.pointOfIndex_two_mul (n k : Nat) :
    Hypercube.pointOfIndex (n + 1) (2 * k) =
      Hypercube.extend (Hypercube.pointOfIndex n k) false := by
  funext i
  by_cases h : i.val < n
  · simp only [Hypercube.pointOfIndex, Hypercube.extend, h, dite_true]
    rw [show Hypercube.tableBit (n + 1) i =
        Hypercube.tableBit n ⟨i.val, h⟩ + 1 by
          simp [Hypercube.tableBit]
          omega]
    exact Hypercube.bitAtNat_two_mul_succ k _
  · have hi : i.val = n := by omega
    simp [Hypercube.pointOfIndex, Hypercube.extend, Hypercube.tableBit,
      hi, Hypercube.bitAtNat_two_mul_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant92075e5b1fee956b0659c1a312cbed5d15be73e440d1901ec56edcc95c4f139c.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ef0d6c9254a5dc0b432c74de4609c03b090bf15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
