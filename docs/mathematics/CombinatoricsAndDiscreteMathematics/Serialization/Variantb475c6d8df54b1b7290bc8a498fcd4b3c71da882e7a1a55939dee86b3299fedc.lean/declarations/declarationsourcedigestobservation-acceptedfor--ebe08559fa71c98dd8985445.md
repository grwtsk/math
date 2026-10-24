# DeclarationSourceDigestObservation.AcceptedFor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8abf44a1ed3590b129c772fb57333f584d8f04dd2704bbecb455157be754f744",
  "kind": "def",
  "lexical_name": "DeclarationSourceDigestObservation.AcceptedFor",
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
  "slug": "declarationsourcedigestobservation-acceptedfor--ebe08559fa71c98dd8985445",
  "source": {
    "blob": "08ca314ea56afa1e519e0934de8a1bfa66329625",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 108,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Serialization/Variantb475c6d8df54b1b7290bc8a498fcd4b3c71da882e7a1a55939dee86b3299fedc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebe08559fa71c98dd89854452d0559e1032c8b1ddc90284adeb18a2fc3efe9e5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Serialization/Variantb475c6d8df54b1b7290bc8a498fcd4b3c71da882e7a1a55939dee86b3299fedc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8abf44a1ed3590b129c772fb57333f584d8f04dd2704bbecb455157be754f744`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DeclarationSourceDigestObservation.AcceptedFor
    (observation : DeclarationSourceDigestObservation)
    (index : CanonicalMathematicalIndex) : Prop :=
  match index.lookupDeclaration observation.declaration with
  | some declaration => declaration.sourceDigest = observation.observedDigest
  | none => False

/-- A matching pinned declaration digest is accepted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Serialization/Variantb475c6d8df54b1b7290bc8a498fcd4b3c71da882e7a1a55939dee86b3299fedc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Serialization/Variantb475c6d8df54b1b7290bc8a498fcd4b3c71da882e7a1a55939dee86b3299fedc.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08ca314ea56afa1e519e0934de8a1bfa66329625` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
