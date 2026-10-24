# nontrivial_of_liesOver_of_isPrime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bbaa8989-e2eb-d38e-ff3f-7cf3a5599327",
  "kind": "theorem",
  "lexical_name": "nontrivial_of_liesOver_of_isPrime",
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
  "slug": "nontrivial-of-liesover-of-isprime--9429c73312be50583adf80fa",
  "source": {
    "blob": "a12e9844cdd888c8d956f962b67609be51d6d2cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 318,
    "path": "GRWTSK/Algebra/Over/Variant59d1cf3cefdc622020b33198a37b81ae7049b024a2f509fa1c99b92630be9ccc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9429c73312be50583adf80fa1c08324302ab3df39b293690ffd3261070984a67",
  "verification": {
    "reference": "docs/verification/Algebra/Over/Variant59d1cf3cefdc622020b33198a37b81ae7049b024a2f509fa1c99b92630be9ccc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbaa8989-e2eb-d38e-ff3f-7cf3a5599327`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nontrivial_of_liesOver_of_isPrime [hp : p.IsPrime] : Nontrivial (B ⧸ P) :=
  nontrivial_of_liesOver_of_ne_top P hp.ne_top

section algEquiv

variable {P} {E : Type*} [EquivLike E B C] [AlgEquivClass E A B C] (σ : E)

/-- An `A ⧸ p`-algebra isomorphism between `B ⧸ P` and `C ⧸ Q` induced by an `A`-algebra
  isomorphism between `B` and `C`, where `Q = σ P`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Over/Variant59d1cf3cefdc622020b33198a37b81ae7049b024a2f509fa1c99b92630be9ccc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Over/Variant59d1cf3cefdc622020b33198a37b81ae7049b024a2f509fa1c99b92630be9ccc.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a12e9844cdd888c8d956f962b67609be51d6d2cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
