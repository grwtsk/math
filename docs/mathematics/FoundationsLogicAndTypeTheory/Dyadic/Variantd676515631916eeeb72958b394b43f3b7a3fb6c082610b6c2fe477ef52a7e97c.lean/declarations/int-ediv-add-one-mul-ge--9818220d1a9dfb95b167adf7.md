# int_ediv_add_one_mul_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a777d959-10b3-5432-b0f0-a3af5f58d5e9",
  "kind": "theorem",
  "lexical_name": "int_ediv_add_one_mul_ge",
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
  "slug": "int-ediv-add-one-mul-ge--9818220d1a9dfb95b167adf7",
  "source": {
    "blob": "7a11771e83344217b96835a985a05ee76e480373",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 307,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Dyadic/Variantd676515631916eeeb72958b394b43f3b7a3fb6c082610b6c2fe477ef52a7e97c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9818220d1a9dfb95b167adf7364c83bee2525481740bd003bee2ff9bee13cd9b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Dyadic/Variantd676515631916eeeb72958b394b43f3b7a3fb6c082610b6c2fe477ef52a7e97c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a777d959-10b3-5432-b0f0-a3af5f58d5e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem int_ediv_add_one_mul_ge (m : Int) (d : Int) (hd : 0 < d) (_hrem : m % d ≠ 0) :
    m ≤ (m / d + 1) * d := by
  -- From Int.emod_add_mul_ediv: m % d + d * (m / d) = m
  have h := Int.emod_add_mul_ediv m d
  -- m % d < d since d > 0
  have hlt := Int.emod_lt_of_pos m hd
  -- d + d * (m / d) = (m / d + 1) * d
  have heq : d + d * (m / d) = (m / d + 1) * d := by
    rw [add_mul, one_mul, mul_comm d (m / d), add_comm]
  -- m = m % d + d * (m / d) < d + d * (m / d) = (m / d + 1) * d
  have hcalc : m < (m / d + 1) * d :=
    calc m = m % d + d * (m / d) := h.symm
      _ < d + d * (m / d) := by gcongr 1
      _ = (m / d + 1) * d := heq
  exact le_of_lt hcalc

/-- Exact division: m = (m / d) * d when m % d = 0 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Dyadic/Variantd676515631916eeeb72958b394b43f3b7a3fb6c082610b6c2fe477ef52a7e97c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Dyadic/Variantd676515631916eeeb72958b394b43f3b7a3fb6c082610b6c2fe477ef52a7e97c.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a11771e83344217b96835a985a05ee76e480373` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
