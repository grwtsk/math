# Giry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1d6dcc7aaa32f2349cbe210930213d6544c565950af2d531efeea47faecf080",
  "kind": "def",
  "lexical_name": "Giry",
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
  "slug": "giry--1088bdd8196afacbf7a58d4e",
  "source": {
    "blob": "a895afb5f701707b01a63995a47757ee37b0adab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 101,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasCat/Variant3f50bdb7d0dbc655db9e8a0ab7d1d6dfd3efec2398008fb15636b7be60190fc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1088bdd8196afacbf7a58d4ee7e22fa0411f1aded34d6ac40bd76a5eab060a99",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasCat/Variant3f50bdb7d0dbc655db9e8a0ab7d1d6dfd3efec2398008fb15636b7be60190fc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1d6dcc7aaa32f2349cbe210930213d6544c565950af2d531efeea47faecf080`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Giry : CategoryTheory.Monad MeasCat where
  toFunctor := Measure
  η :=
    { app := fun X => ⟨@Measure.dirac X.1 X.2, Measure.measurable_dirac⟩
      naturality :=
        fun _ _ ⟨_, hf⟩ => Subtype.ext <| funext fun a => (Measure.map_dirac' hf a).symm }
  μ :=
    { app := fun X => ⟨@Measure.join X.1 X.2, Measure.measurable_join⟩
      naturality := fun _ _ ⟨_, hf⟩ => Subtype.ext <| funext fun μ => Measure.join_map_map hf μ }
  assoc _ := Subtype.ext <| funext fun _ => Measure.join_map_join _
  left_unit _ := Subtype.ext <| funext fun _ => Measure.join_dirac _
  right_unit _ := Subtype.ext <| funext fun _ => Measure.join_map_dirac _

/-- An example of an algebra on `Measure`: the nonnegative Lebesgue integral is a hom, behaving
nicely under the monad operations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasCat/Variant3f50bdb7d0dbc655db9e8a0ab7d1d6dfd3efec2398008fb15636b7be60190fc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasCat/Variant3f50bdb7d0dbc655db9e8a0ab7d1d6dfd3efec2398008fb15636b7be60190fc5.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a895afb5f701707b01a63995a47757ee37b0adab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
