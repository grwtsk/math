# attachWithImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db667f1ebe7748a522bb832eb59840925bf32e1d811da95e2064fbb92d2d860f",
  "kind": "def",
  "lexical_name": "attachWithImpl",
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
  "slug": "attachwithimpl--50774f75cb9e45142a1bdaeb",
  "source": {
    "blob": "1c71ae5fe5fb9d17cea2ba0e217f5af66172fec3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 35,
    "path": "GRWTSK/Topology/GeneralTopology/Attach/Variantb104d26296024c8cd6c4294dce20aa06ae2505ccac5c2723bf67d31e6aa72d43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50774f75cb9e45142a1bdaebf840c8972808d13e91c4f9935a814a550c453650",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attach/Variantb104d26296024c8cd6c4294dce20aa06ae2505ccac5c2723bf67d31e6aa72d43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db667f1ebe7748a522bb832eb59840925bf32e1d811da95e2064fbb92d2d860f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] private unsafe def attachWithImpl
    (o : Option α) (P : α → Prop) (_ : ∀ x, o = some x → P x) : Option {x // P x} := unsafeCast o

/--
“Attaches” a proof that some predicate holds for an optional value, if present, returning a subtype
that expresses this fact.

This function is primarily used to implement `Option.attach`, which allows definitions by
well-founded recursion that use iteration operators (such as `Option.map`) to prove that an optional
value drawn from a parameter is smaller than the parameter. This allows the well-founded recursion
mechanism to prove that the function terminates.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attach/Variantb104d26296024c8cd6c4294dce20aa06ae2505ccac5c2723bf67d31e6aa72d43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attach/Variantb104d26296024c8cd6c4294dce20aa06ae2505ccac5c2723bf67d31e6aa72d43.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c71ae5fe5fb9d17cea2ba0e217f5af66172fec3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
