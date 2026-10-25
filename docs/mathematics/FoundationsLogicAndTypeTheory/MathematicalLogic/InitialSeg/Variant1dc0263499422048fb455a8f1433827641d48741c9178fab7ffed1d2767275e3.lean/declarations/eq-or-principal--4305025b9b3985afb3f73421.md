# eq_or_principal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1384de2-49c2-a768-af16-a97f5ef4274c",
  "kind": "theorem",
  "lexical_name": "eq_or_principal",
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
  "slug": "eq-or-principal--4305025b9b3985afb3f73421",
  "source": {
    "blob": "43d3cf056a9478508f2847e854a8edce3e665034",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 181,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InitialSeg/Variant1dc0263499422048fb455a8f1433827641d48741c9178fab7ffed1d2767275e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4305025b9b3985afb3f73421dbd81783ecdd82d3bdedbe56af66b0902b041941",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InitialSeg/Variant1dc0263499422048fb455a8f1433827641d48741c9178fab7ffed1d2767275e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1384de2-49c2-a768-af16-a97f5ef4274c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_or_principal [IsWellOrder β s] (f : r ≼i s) :
    Surjective f ∨ ∃ b, ∀ x, s x b ↔ ∃ y, f y = x :=
  or_iff_not_imp_right.2 fun h b =>
    Acc.recOn (IsWellFounded.wf.apply b : Acc s b) fun x _ IH =>
      not_forall_not.1 fun hn =>
        h
          ⟨x, fun y =>
            ⟨IH _, fun ⟨a, e⟩ => by
              rw [← e];
                exact
                  (trichotomous _ _).resolve_right
                    (not_or_of_not (hn a) fun hl => not_exists.2 hn (f.init hl))⟩⟩
#align initial_seg.eq_or_principal InitialSeg.eq_or_principal

/-- Restrict the codomain of an initial segment -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InitialSeg/Variant1dc0263499422048fb455a8f1433827641d48741c9178fab7ffed1d2767275e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InitialSeg/Variant1dc0263499422048fb455a8f1433827641d48741c9178fab7ffed1d2767275e3.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43d3cf056a9478508f2847e854a8edce3e665034` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
