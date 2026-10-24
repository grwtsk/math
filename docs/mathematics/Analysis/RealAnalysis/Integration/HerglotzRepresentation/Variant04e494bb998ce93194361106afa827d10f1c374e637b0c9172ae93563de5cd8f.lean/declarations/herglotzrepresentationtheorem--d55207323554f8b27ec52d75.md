# HerglotzRepresentationTheorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8afc0fdda81eaf26dc8ee8aeab67f5254484c0c4dc275b777ad84c2bd8dd01c",
  "kind": "def",
  "lexical_name": "HerglotzRepresentationTheorem",
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
  "slug": "herglotzrepresentationtheorem--d55207323554f8b27ec52d75",
  "source": {
    "blob": "24c8325af6a651f514e6de285231ba58dd9232bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HerglotzRepresentation/Variant04e494bb998ce93194361106afa827d10f1c374e637b0c9172ae93563de5cd8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d55207323554f8b27ec52d75c5f39f586cb6d4ed42a150b287ae7c2f3b391190",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HerglotzRepresentation/Variant04e494bb998ce93194361106afa827d10f1c374e637b0c9172ae93563de5cd8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8afc0fdda81eaf26dc8ee8aeab67f5254484c0c4dc275b777ad84c2bd8dd01c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HerglotzRepresentationTheorem : Prop :=
  ∀ M : ℂ → ℂ, IsHerglotz M → Nonempty (Representation M)

/-- A measure is concentrated on a countable set of nonzero atoms. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HerglotzRepresentation/Variant04e494bb998ce93194361106afa827d10f1c374e637b0c9172ae93563de5cd8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HerglotzRepresentation/Variant04e494bb998ce93194361106afa827d10f1c374e637b0c9172ae93563de5cd8f.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24c8325af6a651f514e6de285231ba58dd9232bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
