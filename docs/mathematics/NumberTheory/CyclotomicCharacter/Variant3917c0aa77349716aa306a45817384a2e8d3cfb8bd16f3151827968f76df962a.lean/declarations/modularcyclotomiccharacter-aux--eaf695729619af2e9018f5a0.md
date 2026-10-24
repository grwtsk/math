# modularCyclotomicCharacter.aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee335d65d0caafd2ec6e8eea48979cba20a5e0440476a332ed81433f553cbfca",
  "kind": "def",
  "lexical_name": "modularCyclotomicCharacter.aux",
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
  "slug": "modularcyclotomiccharacter-aux--eaf695729619af2e9018f5a0",
  "source": {
    "blob": "54ea476741d5a3beee9d20d12c30433e4ebc3040",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 89,
    "path": "GRWTSK/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eaf695729619af2e9018f5a059fd974df73c814dcb5a4093fe3eb76ff0ce7b97",
  "verification": {
    "reference": "docs/verification/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee335d65d0caafd2ec6e8eea48979cba20a5e0440476a332ed81433f553cbfca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def modularCyclotomicCharacter.aux (g : L ≃+* L) (n : ℕ) [NeZero n] : ℤ :=
  (rootsOfUnity.integer_power_of_ringEquiv n g).choose

-- the only thing we know about `modularCyclotomicCharacter_aux g n`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54ea476741d5a3beee9d20d12c30433e4ebc3040` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
