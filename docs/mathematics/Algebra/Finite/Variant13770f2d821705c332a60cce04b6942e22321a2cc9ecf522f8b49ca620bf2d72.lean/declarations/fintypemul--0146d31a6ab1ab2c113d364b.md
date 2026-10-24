# fintypeMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35243bcb2f955f3fb3f969c96f349b20edd77e3834ca4b1e152c9703d4e7a80a",
  "kind": "instance",
  "lexical_name": "fintypeMul",
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
  "slug": "fintypemul--0146d31a6ab1ab2c113d364b",
  "source": {
    "blob": "f425f5f172f8b5df9ae5b47535c5b5aa34fdda8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 40,
    "path": "GRWTSK/Algebra/Finite/Variant13770f2d821705c332a60cce04b6942e22321a2cc9ecf522f8b49ca620bf2d72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0146d31a6ab1ab2c113d364beb8606ec9a7b1a453629a2bac6156234cee5f8f7",
  "verification": {
    "reference": "docs/verification/Algebra/Finite/Variant13770f2d821705c332a60cce04b6942e22321a2cc9ecf522f8b49ca620bf2d72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35243bcb2f955f3fb3f969c96f349b20edd77e3834ca4b1e152c9703d4e7a80a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance fintypeMul [DecidableEq α] (s t : Set α) [Fintype s] [Fintype t] : Fintype (s * t) :=
  Set.fintypeImage2 _ _ _

end Mul

section Monoid

variable [Monoid α] {s t : Set α}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finite/Variant13770f2d821705c332a60cce04b6942e22321a2cc9ecf522f8b49ca620bf2d72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finite/Variant13770f2d821705c332a60cce04b6942e22321a2cc9ecf522f8b49ca620bf2d72.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f425f5f172f8b5df9ae5b47535c5b5aa34fdda8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
