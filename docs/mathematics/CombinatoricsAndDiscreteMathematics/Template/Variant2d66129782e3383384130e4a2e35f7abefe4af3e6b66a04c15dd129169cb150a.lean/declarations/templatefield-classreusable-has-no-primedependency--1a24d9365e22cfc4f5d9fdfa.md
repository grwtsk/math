# TemplateField.classReusable_has_no_primeDependency

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c64bc274-2bf5-bb17-78be-b6080f38824f",
  "kind": "theorem",
  "lexical_name": "TemplateField.classReusable_has_no_primeDependency",
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
  "slug": "templatefield-classreusable-has-no-primedependency--1a24d9365e22cfc4f5d9fdfa",
  "source": {
    "blob": "56dc80634c78262541c373f9ae45f166f767ad06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 222,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Template/Variant2d66129782e3383384130e4a2e35f7abefe4af3e6b66a04c15dd129169cb150a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a24d9365e22cfc4f5d9fdfaabf01e8f9573498c028ce3bbdc5444eb60b87c3c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Template/Variant2d66129782e3383384130e4a2e35f7abefe4af3e6b66a04c15dd129169cb150a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c64bc274-2bf5-bb17-78be-b6080f38824f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TemplateField.classReusable_has_no_primeDependency
    {field : TemplateField}
    (reusable : field.ClassReusable)
    {symbol : Symbol}
    (member : symbol ∈ field.dependencySet) :
    symbol.partition ≠ .prime := by
  intro prime
  rcases reusable symbol member with globalCase | classCase
  · have impossible :
        DependencyPartition.global = .prime :=
      globalCase.symm.trans prime
    cases impossible
  · have impossible :
        DependencyPartition.class = .prime :=
      classCase.symm.trans prime
    cases impossible

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Template/Variant2d66129782e3383384130e4a2e35f7abefe4af3e6b66a04c15dd129169cb150a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Template/Variant2d66129782e3383384130e4a2e35f7abefe4af3e6b66a04c15dd129169cb150a.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56dc80634c78262541c373f9ae45f166f767ad06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
