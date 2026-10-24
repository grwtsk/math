# preKernelInner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1239fa2689182683cdca94d1322da6b2a0c93758642ecf2684fc12d95cf2043f",
  "kind": "def",
  "lexical_name": "preKernelInner",
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
  "slug": "prekernelinner--b3f9c9024c8d5629cca4f3c6",
  "source": {
    "blob": "d7c0dff8e648645c348e02cc877adddce79c716e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 58,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Quotient/Variantf9f59dbc151a2f5c5fbb68af42c00876458904daee5f01464de2d9d4968a9ca7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3f9c9024c8d5629cca4f3c66e10da0b6bb3595425a2e360fadd9547406a81b9",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Quotient/Variantf9f59dbc151a2f5c5fbb68af42c00876458904daee5f01464de2d9d4968a9ca7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1239fa2689182683cdca94d1322da6b2a0c93758642ecf2684fc12d95cf2043f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def preKernelInner
    (left right : PreKernelSpace kernel) : ℂ :=
  Quotient.liftOn₂' left right (Raw.inner kernel)
    (rawInner_respects_quotient kernel)

/-- The descended form is represented by the raw kernel form and is therefore
independent of the selected representatives. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Quotient/Variantf9f59dbc151a2f5c5fbb68af42c00876458904daee5f01464de2d9d4968a9ca7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Quotient/Variantf9f59dbc151a2f5c5fbb68af42c00876458904daee5f01464de2d9d4968a9ca7.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7c0dff8e648645c348e02cc877adddce79c716e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
