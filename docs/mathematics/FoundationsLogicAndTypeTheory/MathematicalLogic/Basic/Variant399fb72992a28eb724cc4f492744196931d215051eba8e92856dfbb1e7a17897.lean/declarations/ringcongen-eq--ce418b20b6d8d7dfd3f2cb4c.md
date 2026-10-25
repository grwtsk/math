# ringConGen_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d9c5eaa-cbca-8207-3bcc-040133e46f12",
  "kind": "theorem",
  "lexical_name": "ringConGen_eq",
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
  "slug": "ringcongen-eq--ce418b20b6d8d7dfd3f2cb4c",
  "source": {
    "blob": "ba4e92b9a48d713dd5aaa79fb5dec02981b8d97b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 259,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant399fb72992a28eb724cc4f492744196931d215051eba8e92856dfbb1e7a17897.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce418b20b6d8d7dfd3f2cb4c33732f6c96b1d37a31ef34dd4b5016dee8d728f8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant399fb72992a28eb724cc4f492744196931d215051eba8e92856dfbb1e7a17897.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d9c5eaa-cbca-8207-3bcc-040133e46f12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ringConGen_eq (r : R → R → Prop) :
    ringConGen r = sInf {s : RingCon R | ∀ x y, r x y → s x y} :=
  le_antisymm
    (fun _x _y H =>
      RingConGen.Rel.recOn H (fun _ _ h _ hs => hs _ _ h) (RingCon.refl _)
        (fun _ => RingCon.symm _) (fun _ _ => RingCon.trans _)
        (fun _ _ h1 h2 c hc => c.add (h1 c hc) <| h2 c hc)
        (fun _ _ h1 h2 c hc => c.mul (h1 c hc) <| h2 c hc))
    (sInf_le le_ringConGen)

/-- The smallest congruence relation containing a binary relation `r` is contained in any
congruence relation containing `r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant399fb72992a28eb724cc4f492744196931d215051eba8e92856dfbb1e7a17897.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant399fb72992a28eb724cc4f492744196931d215051eba8e92856dfbb1e7a17897.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba4e92b9a48d713dd5aaa79fb5dec02981b8d97b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
