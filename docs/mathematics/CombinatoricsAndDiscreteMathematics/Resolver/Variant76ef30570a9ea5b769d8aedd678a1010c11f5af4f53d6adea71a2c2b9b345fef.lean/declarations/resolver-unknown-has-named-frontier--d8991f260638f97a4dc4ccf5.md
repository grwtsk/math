# resolver_unknown_has_named_frontier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:641f22e3-6454-3a57-e0b9-6f8a8cf0d3e8",
  "kind": "theorem",
  "lexical_name": "resolver_unknown_has_named_frontier",
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
  "slug": "resolver-unknown-has-named-frontier--d8991f260638f97a4dc4ccf5",
  "source": {
    "blob": "bc0cac4539a7c2c6ab544ff16a082955ce78df84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 210,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Resolver/Variant76ef30570a9ea5b769d8aedd678a1010c11f5af4f53d6adea71a2c2b9b345fef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8991f260638f97a4dc4ccf5af1738fa39dd2a54546b9ce9027ffe341100038b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Resolver/Variant76ef30570a9ea5b769d8aedd678a1010c11f5af4f53d6adea71a2c2b9b345fef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:641f22e3-6454-3a57-e0b9-6f8a8cf0d3e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem resolver_unknown_has_named_frontier
    {Node : Type uNode}
    {LeafWitness : Type uLeaf}
    {ObstructionWitness : Type uObstruction}
    (cut :
      FiniteResolverCut
        Node LeafWitness ObstructionWitness)
    (node nearest : Node)
    (unknowns : Finset FrontierUnknownKind)
    (unknown :
      resolve cut node =
        FrontierResolution.unknown
          nearest unknowns) :
    unknowns.Nonempty := by
  cases validation :
      cut.structuralValidation with
  | error structuralReason =>
      simp [resolve, validation] at unknown
  | ok value =>
      cases leaf :
          cut.leafWitness node with
      | some leafValue =>
          rcases leafValue with
            ⟨address, witness⟩
          simp [resolve, validation,
            leaf] at unknown
      | none =>
          cases obstruction :
              cut.obstructionWitness node with
          | some witness =>
              simp [resolve, validation,
                leaf, obstruction] at unknown
          | none =>
              simp [resolve, validation,
                leaf, obstruction] at unknown
              subst unknowns
              exact
                cut.unknowns_nonempty
                  node leaf obstruction

end Mathematics.BinaryFrontier.Refinement
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Resolver/Variant76ef30570a9ea5b769d8aedd678a1010c11f5af4f53d6adea71a2c2b9b345fef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Resolver/Variant76ef30570a9ea5b769d8aedd678a1010c11f5af4f53d6adea71a2c2b9b345fef.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc0cac4539a7c2c6ab544ff16a082955ce78df84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
