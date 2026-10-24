# MulEquiv.AddMonoid.End

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f6e7d698f834b10fb4fff1f87c02a67fc923567072667a0bd796ddb67901e0a",
  "kind": "def",
  "lexical_name": "MulEquiv.AddMonoid.End",
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
  "slug": "mulequiv-addmonoid-end--4045a28b9348b37d61751c07",
  "source": {
    "blob": "a53bbe89eed3c222c4b6e391f52a33c181c8f0a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 200,
    "path": "GRWTSK/Algebra/GroupTheory/TypeTags/Variant7fd82546123448bd6ad1f043f1e54cbc13c573c2758cc0b6a935c7df0268270b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4045a28b9348b37d61751c0770549af3bfed03c2c4777a97862c01f243fc843b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/TypeTags/Variant7fd82546123448bd6ad1f043f1e54cbc13c573c2758cc0b6a935c7df0268270b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f6e7d698f834b10fb4fff1f87c02a67fc923567072667a0bd796ddb67901e0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MulEquiv.AddMonoid.End [AddMonoid M] :
    AddMonoid.End M ≃* _root_.Monoid.End (Multiplicative M) where
  __ := AddMonoidHom.toMultiplicative
  map_mul' := fun _ _ ↦ rfl

end End
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/TypeTags/Variant7fd82546123448bd6ad1f043f1e54cbc13c573c2758cc0b6a935c7df0268270b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/TypeTags/Variant7fd82546123448bd6ad1f043f1e54cbc13c573c2758cc0b6a935c7df0268270b.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a53bbe89eed3c222c4b6e391f52a33c181c8f0a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
