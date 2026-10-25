# linearDag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:012b33d88a9dd2fbc33d01a620015bd56dc3b8a8fda4f10619fd079e9b79abda",
  "kind": "def",
  "lexical_name": "linearDag",
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
  "slug": "lineardag--58fa7781bedbd6876c112d29",
  "source": {
    "blob": "cca7fc890dcbc83b25153290633574d6716678a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RouterReplay/Variant0d251938b90ac031dc05f72d8f838bd338ea78bf437b3369fe85c836020b9bc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:58fa7781bedbd6876c112d2908e747a470927e95fd63eaefc269050d75540462",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RouterReplay/Variant0d251938b90ac031dc05f72d8f838bd338ea78bf437b3369fe85c836020b9bc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:012b33d88a9dd2fbc33d01a620015bd56dc3b8a8fda4f10619fd079e9b79abda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def linearDag : Dag :=
  let n1 := { id := ⟨"n1"⟩, expr := .const `True [] }
  let n2 := { id := ⟨"n2"⟩, expr := .const `True [] }
  let n3 := { id := ⟨"n3"⟩, expr := .const `True [] }

  let e1 := {
    id := ⟨"e1"⟩,
    from := n1.id,
    to := n2.id,
    kind := .material,
    proof := .const `trivial [],
    w? := none,
    spec? := none
  }

  let e2 := {
    id := ⟨"e2"⟩,
    from := n2.id,
    to := n3.id,
    kind := .material,
    proof := .const `trivial [],
    w? := none,
    spec? := none
  }

  { V := [n1, n2, n3], E := [e1, e2] }

/-- The expected route specification: n1 → e1 → n2 → e2 → n3. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RouterReplay/Variant0d251938b90ac031dc05f72d8f838bd338ea78bf437b3369fe85c836020b9bc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RouterReplay/Variant0d251938b90ac031dc05f72d8f838bd338ea78bf437b3369fe85c836020b9bc1.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cca7fc890dcbc83b25153290633574d6716678a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
