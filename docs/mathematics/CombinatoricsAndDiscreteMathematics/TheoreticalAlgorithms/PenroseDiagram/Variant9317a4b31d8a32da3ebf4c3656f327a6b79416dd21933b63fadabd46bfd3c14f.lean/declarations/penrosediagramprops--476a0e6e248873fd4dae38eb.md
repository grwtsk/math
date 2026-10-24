# PenroseDiagramProps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b176c91ff579cf071149ce60166fbe96ab7c3a401bb03a628b5b24ede1c8b276",
  "kind": "structure",
  "lexical_name": "PenroseDiagramProps",
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
  "slug": "penrosediagramprops--476a0e6e248873fd4dae38eb",
  "source": {
    "blob": "78a3b8ba86236329d58b3d9a844b2f69be9db8e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 7,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PenroseDiagram/Variant9317a4b31d8a32da3ebf4c3656f327a6b79416dd21933b63fadabd46bfd3c14f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:476a0e6e248873fd4dae38ebda80e8957bc62c956036b0e04452f89d75e60f89",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PenroseDiagram/Variant9317a4b31d8a32da3ebf4c3656f327a6b79416dd21933b63fadabd46bfd3c14f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b176c91ff579cf071149ce60166fbe96ab7c3a401bb03a628b5b24ede1c8b276`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 7–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
structure PenroseDiagramProps where
  embeds : Array (String × Html)
  dsl    : String
  sty    : String
  sub    : String
  deriving Inhabited

#mkrpcenc PenroseDiagramProps

/-- Displays the given diagram using [Penrose](https://penrose.cs.cmu.edu/). The website contains
explanations of how to write domain (`dsl`), style (`sty`), and substance (`sub`) programs.

The diagram may also contain embedded HTML trees which are specified in `embeds`. Each embed is HTML
together with the name of an object `x` in the substance program which *must* be assigned
an `x.textBox : Rectangle` field in the style program. This rectangle will be replaced with the HTML
tree.

The following additional constants are prepended to the style program:
```penrose
theme {
  color foreground
  color tooltipBackground
  color tooltipForeground
  color tooltipBorder
}
```
and can be accessed as, for example, `theme.foreground` in the provided `sty` in order to match
the editor theme. -/
@[widget_module]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PenroseDiagram/Variant9317a4b31d8a32da3ebf4c3656f327a6b79416dd21933b63fadabd46bfd3c14f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PenroseDiagram/Variant9317a4b31d8a32da3ebf4c3656f327a6b79416dd21933b63fadabd46bfd3c14f.lean#L7).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78a3b8ba86236329d58b3d9a844b2f69be9db8e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
