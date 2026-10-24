# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4e512efa4f3ec7409f14503bbfbe1dd23578830dc2e6cf4e77e13d2c2224884",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--133ff0250ec9b0e24ba7d309",
  "source": {
    "blob": "f5efdcadefbfbf9ff3b3c53a07029d757072bed0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 61,
    "path": "GRWTSK/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:133ff0250ec9b0e24ba7d3098296dd1144dd6770a8a2997f4c0e59fa57e6503d",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4e512efa4f3ec7409f14503bbfbe1dd23578830dc2e6cf4e77e13d2c2224884`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [Nontrivial R] : Nonempty <| PrimeSpectrum R :=
  let ⟨I, hI⟩ := Ideal.exists_maximal R
  ⟨⟨I, hI.isPrime⟩⟩

/-- The prime spectrum of the zero ring is empty. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantfa621e164b57b15aab3a2eb2e018bfe7835c9712144ca8da42aff26c20250814.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5efdcadefbfbf9ff3b3c53a07029d757072bed0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
