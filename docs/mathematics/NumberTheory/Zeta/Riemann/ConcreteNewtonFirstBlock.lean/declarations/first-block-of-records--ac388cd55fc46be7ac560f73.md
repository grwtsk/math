# first_block_of_records

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba449a4c-dfc4-6808-f0e4-b653ef94a117",
  "kind": "theorem",
  "lexical_name": "first_block_of_records",
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
  "slug": "first-block-of-records--ac388cd55fc46be7ac560f73",
  "source": {
    "blob": "42533b891a33d952c2d500b68d84e168427e2864",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 71,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlock.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac388cd55fc46be7ac560f730d63d2109f9bade0c5068a7a46390ce60b419d70",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlock.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba449a4c-dfc4-6808-f0e4-b653ef94a117`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_block_of_records (t : Transcript prefixLength)
    (hrecords : ∀ i : Fin 64, t.prefix ⟨i.1, by have := i.isLt; change i.1 < 4096; omega⟩ = output i) :
    checkPrefix prefixLength center plan t (ConcreteNewtonBlockAcceptance.blockIndices 0) = true := by
  apply (checkPrefix_iff prefixLength center plan t _).mpr
  intro i hi
  have hi64 := (mem_first_block i).mp hi
  let j : Fin 64 := ⟨i.1, hi64⟩
  refine ⟨?_, ?_⟩
  · simpa only [base, plan, Nat.cast_add, Nat.cast_one] using (all_inputs j).1
  · have hc := endpoint_compute j
    have hr := hrecords j
    simpa only [base, plan, Nat.cast_add, Nat.cast_one] using hc.trans hr.symm

/-- One fewer PREFIX-block premise, not a proof of the remaining 65 data checks. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlock.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstBlock.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42533b891a33d952c2d500b68d84e168427e2864` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
