# xgcdAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:318ef54bdf39cc3c14fff6a3d33b8b8b514c35246ff87a445063af21abf12a55",
  "kind": "def",
  "lexical_name": "xgcdAux",
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
  "slug": "xgcdaux--abc9c035ba66573fb0d4bea4",
  "source": {
    "blob": "97fd64a275e19a64452bfa107f0eccce4c153e6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 188,
    "path": "GRWTSK/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abc9c035ba66573fb0d4bea49bbc2047fdaaaaf8b31fce84c048ad73dc4076c8",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:318ef54bdf39cc3c14fff6a3d33b8b8b514c35246ff87a445063af21abf12a55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def xgcdAux (r s t r' s' t' : R) : R × R × R :=
  if _hr : r = 0 then (r', s', t')
  else
    let q := r' / r
    have _ := mod_lt r' _hr
    xgcdAux (r' % r) (s' - q * s) (t' - q * t) r s t
termination_by r

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variantef29c629a5b6cab45918267a562f6b898875f7e0ce775ce5b8a3c3c98443b41a.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97fd64a275e19a64452bfa107f0eccce4c153e6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
