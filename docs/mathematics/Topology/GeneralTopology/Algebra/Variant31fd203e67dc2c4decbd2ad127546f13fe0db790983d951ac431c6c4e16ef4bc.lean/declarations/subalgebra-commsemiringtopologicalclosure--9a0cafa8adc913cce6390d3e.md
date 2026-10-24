# Subalgebra.commSemiringTopologicalClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a5cc41cf30a8ca9eb29b80739dce0eb8272c6e0ca7119d5bee0b8e41da54323",
  "kind": "def",
  "lexical_name": "Subalgebra.commSemiringTopologicalClosure",
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
  "slug": "subalgebra-commsemiringtopologicalclosure--9a0cafa8adc913cce6390d3e",
  "source": {
    "blob": "cb4348d1937f60dabc763c8876c06e1a070f6212",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 135,
    "path": "GRWTSK/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a0cafa8adc913cce6390d3ecb3ee6f4f25c933efc0c813c241f61d98d18e2a0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a5cc41cf30a8ca9eb29b80739dce0eb8272c6e0ca7119d5bee0b8e41da54323`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Subalgebra.commSemiringTopologicalClosure [T2Space A] (s : Subalgebra R A)
    (hs : ∀ x y : s, x * y = y * x) : CommSemiring s.topologicalClosure :=
  { s.topologicalClosure.toSemiring, s.toSubmonoid.commMonoidTopologicalClosure hs with }
#align subalgebra.comm_semiring_topological_closure Subalgebra.commSemiringTopologicalClosure

/-- This is really a statement about topological algebra isomorphisms,
but we don't have those, so we use the clunky approach of talking about
an algebra homomorphism, and a separate homeomorphism,
along with a witness that as functions they are the same.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Algebra/Variant31fd203e67dc2c4decbd2ad127546f13fe0db790983d951ac431c6c4e16ef4bc.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb4348d1937f60dabc763c8876c06e1a070f6212` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
