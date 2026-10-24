# invertibleOfRingCharNotDvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ebe64af6a8c408cb5989e22a6e2a59d73f6c6ad0b80ffab85eb2cf5029f8d2a",
  "kind": "def",
  "lexical_name": "invertibleOfRingCharNotDvd",
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
  "slug": "invertibleofringcharnotdvd--fafdc186e8f884d3ff22171e",
  "source": {
    "blob": "72000974be59f794a70bf2bbd73068a123b8b34b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 37,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Invertible/Variantb38541695245276353a1534173ac8e8efa565a8d0c155f28a07bb2e2a9a3bfcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fafdc186e8f884d3ff22171e73127a85cc8ee4353780999439eb9c6830aa1ec7",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Invertible/Variantb38541695245276353a1534173ac8e8efa565a8d0c155f28a07bb2e2a9a3bfcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ebe64af6a8c408cb5989e22a6e2a59d73f6c6ad0b80ffab85eb2cf5029f8d2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def invertibleOfRingCharNotDvd {t : ℕ} (not_dvd : ¬ringChar K ∣ t) : Invertible (t : K) :=
  invertibleOfNonzero fun h => not_dvd ((ringChar.spec K t).mp h)
#align invertible_of_ring_char_not_dvd invertibleOfRingCharNotDvd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Invertible/Variantb38541695245276353a1534173ac8e8efa565a8d0c155f28a07bb2e2a9a3bfcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Invertible/Variantb38541695245276353a1534173ac8e8efa565a8d0c155f28a07bb2e2a9a3bfcb.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72000974be59f794a70bf2bbd73068a123b8b34b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
