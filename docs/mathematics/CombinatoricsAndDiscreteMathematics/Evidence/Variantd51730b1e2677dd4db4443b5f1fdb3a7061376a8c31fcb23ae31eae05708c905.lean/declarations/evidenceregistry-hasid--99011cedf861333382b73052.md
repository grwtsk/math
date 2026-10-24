# EvidenceRegistry.HasId

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9632a69fd108c3b145c9d053a8094425c9274c73e75219f4c173c2aca03983df",
  "kind": "def",
  "lexical_name": "EvidenceRegistry.HasId",
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
  "slug": "evidenceregistry-hasid--99011cedf861333382b73052",
  "source": {
    "blob": "c299450a50667bb7dc33e3647125c32f69ba7fc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 67,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Evidence/Variantd51730b1e2677dd4db4443b5f1fdb3a7061376a8c31fcb23ae31eae05708c905.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99011cedf861333382b73052afebd365071b468ea1d17bd0199e52f6599ce8ca",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Evidence/Variantd51730b1e2677dd4db4443b5f1fdb3a7061376a8c31fcb23ae31eae05708c905.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9632a69fd108c3b145c9d053a8094425c9274c73e75219f4c173c2aca03983df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EvidenceRegistry.HasId
    {text : TextCarrier}
    (registry : EvidenceRegistry text)
    (id : EvidenceId) : Prop :=
  ∃ evidence : Fin registry.entries.size,
    (registry.entries[evidence]).id = id

end Mathematics.SemanticTokenization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Evidence/Variantd51730b1e2677dd4db4443b5f1fdb3a7061376a8c31fcb23ae31eae05708c905.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Evidence/Variantd51730b1e2677dd4db4443b5f1fdb3a7061376a8c31fcb23ae31eae05708c905.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c299450a50667bb7dc33e3647125c32f69ba7fc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
