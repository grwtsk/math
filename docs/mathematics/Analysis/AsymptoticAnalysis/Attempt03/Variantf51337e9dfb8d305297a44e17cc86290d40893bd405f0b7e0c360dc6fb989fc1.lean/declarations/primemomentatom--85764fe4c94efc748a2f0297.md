# primeMomentAtom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd7cf8b3255c0f275ed59973ee5c105e31e53c3d81624fe68e3c90ec1ef907c9",
  "kind": "def",
  "lexical_name": "primeMomentAtom",
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
  "slug": "primemomentatom--85764fe4c94efc748a2f0297",
  "source": {
    "blob": "16c29c89d999755af69d549130d0f87813a9d896",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 25,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt03/Variantf51337e9dfb8d305297a44e17cc86290d40893bd405f0b7e0c360dc6fb989fc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85764fe4c94efc748a2f0297b5794ec36a96bf3b4ad3589209e726b50d1c92dc",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Attempt03/Variantf51337e9dfb8d305297a44e17cc86290d40893bd405f0b7e0c360dc6fb989fc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd7cf8b3255c0f275ed59973ee5c105e31e53c3d81624fe68e3c90ec1ef907c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def primeMomentAtom (r : ℕ) (p : Nat.Primes) (k : ℕ) : ℝ := momentAtom r p.val k

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Attempt03/Variantf51337e9dfb8d305297a44e17cc86290d40893bd405f0b7e0c360dc6fb989fc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Attempt03/Variantf51337e9dfb8d305297a44e17cc86290d40893bd405f0b7e0c360dc6fb989fc1.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16c29c89d999755af69d549130d0f87813a9d896` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
