# Acc.sym2_gameAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a57a309-ea0d-c38d-734c-8b65e3f27e30",
  "kind": "theorem",
  "lexical_name": "Acc.sym2_gameAdd",
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
  "slug": "acc-sym2-gameadd--9ccc62a8066a4e9c18441393",
  "source": {
    "blob": "521d50db012fc93ae3c7b01d520a8209649f0891",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 184,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ccc62a8066a4e9c184413931a30097fed1964a5d47f4f1536e2a27210c7a17c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a57a309-ea0d-c38d-734c-8b65e3f27e30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Acc.sym2_gameAdd {a b} (ha : Acc rα a) (hb : Acc rα b) :
    Acc (Sym2.GameAdd rα) s(a, b) := by
  induction ha generalizing b with | _ a _ iha
  induction hb with | _ b hb ihb
  refine Acc.intro _ fun s => ?_
  induction s with | _ c d
  rw [Sym2.GameAdd]
  dsimp
  rintro ((rc | rd) | (rd | rc))
  · exact iha c rc ⟨b, hb⟩
  · exact ihb d rd
  · rw [Sym2.eq_swap]
    exact iha d rd ⟨b, hb⟩
  · rw [Sym2.eq_swap]
    exact ihb c rc

/-- The `Sym2.GameAdd` relation on well-founded inputs is well-founded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GameAdd/Variant23363c33a0d7add0a9b73fe3b5b31e5f0c7bb10e01038a04efb6054fb3c730d5.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `521d50db012fc93ae3c7b01d520a8209649f0891` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
