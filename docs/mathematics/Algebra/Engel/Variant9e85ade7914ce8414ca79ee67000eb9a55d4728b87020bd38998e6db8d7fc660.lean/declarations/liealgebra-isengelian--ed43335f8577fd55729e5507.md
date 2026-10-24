# LieAlgebra.IsEngelian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a43c56729be5fa232a4c467e91cce04a720687c0a0685a3835fc1b6d2d53606",
  "kind": "def",
  "lexical_name": "LieAlgebra.IsEngelian",
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
  "slug": "liealgebra-isengelian--ed43335f8577fd55729e5507",
  "source": {
    "blob": "41562237b006546b33436bfdbe8c3458a16e8ef7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 164,
    "path": "GRWTSK/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed43335f8577fd55729e55076eca0a4a29a082b38f6d8eddc2481aa12911ba92",
  "verification": {
    "reference": "docs/verification/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a43c56729be5fa232a4c467e91cce04a720687c0a0685a3835fc1b6d2d53606`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LieAlgebra.IsEngelian : Prop :=
  ∀ (M : Type u₄) [AddCommGroup M] [Module R M] [LieRingModule L M] [LieModule R L M],
    (∀ x : L, _root_.IsNilpotent (toEnd R L M x)) → LieModule.IsNilpotent L M

variable {R L}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41562237b006546b33436bfdbe8c3458a16e8ef7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
