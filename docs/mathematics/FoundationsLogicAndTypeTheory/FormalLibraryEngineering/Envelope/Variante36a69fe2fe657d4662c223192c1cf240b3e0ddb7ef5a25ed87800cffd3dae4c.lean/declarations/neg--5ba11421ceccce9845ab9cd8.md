# neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6847c36f2bb7f5e83a2a728efeb14ca4036bda0af259dd0352939f16609ff3a",
  "kind": "def",
  "lexical_name": "neg",
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
  "slug": "neg--5ba11421ceccce9845ab9cd8",
  "source": {
    "blob": "2ff7f7bf838b15fae12a1e8356af7b27065496ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 122,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Envelope/Variante36a69fe2fe657d4662c223192c1cf240b3e0ddb7ef5a25ed87800cffd3dae4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ba11421ceccce9845ab9cd8ba604e7940a2ef057577c7b93762d9142e370ddf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Envelope/Variante36a69fe2fe657d4662c223192c1cf240b3e0ddb7ef5a25ed87800cffd3dae4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6847c36f2bb7f5e83a2a728efeb14ca4036bda0af259dd0352939f16609ff3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[local simp] def neg (q : Q α) : Q α :=
  q.liftOn (fun (a, b) => Q.mk (b, a))
    (by intro (a₁, b₁) (a₂, b₂)
        simp; intro k h; apply Quot.sound; simp
        exact ⟨k, h.symm⟩)

attribute [local simp]
  Quot.liftOn AddCommMonoid.add_zero AddCommMonoid.zero_add NatModule.one_nsmul NatModule.zero_nsmul NatModule.nsmul_zero
  NatModule.nsmul_add NatModule.add_nsmul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Envelope/Variante36a69fe2fe657d4662c223192c1cf240b3e0ddb7ef5a25ed87800cffd3dae4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Envelope/Variante36a69fe2fe657d4662c223192c1cf240b3e0ddb7ef5a25ed87800cffd3dae4c.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ff7f7bf838b15fae12a1e8356af7b27065496ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
