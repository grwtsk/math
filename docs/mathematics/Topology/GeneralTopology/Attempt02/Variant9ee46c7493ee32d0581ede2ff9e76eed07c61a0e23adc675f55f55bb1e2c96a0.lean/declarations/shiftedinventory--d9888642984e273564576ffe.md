# shiftedInventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f89f677e134bc9ab3fc6f08b2cb08c7ac7e1ecc15900b10f350b75b97f139e46",
  "kind": "def",
  "lexical_name": "shiftedInventory",
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
  "slug": "shiftedinventory--d9888642984e273564576ffe",
  "source": {
    "blob": "9b2b1c58157e944bc661cb3db060c63c0cac82be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 17,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt02/Variant9ee46c7493ee32d0581ede2ff9e76eed07c61a0e23adc675f55f55bb1e2c96a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d9888642984e273564576ffef30faf6807d77d9138de5b0f3475f7edbdb125a6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt02/Variant9ee46c7493ee32d0581ede2ff9e76eed07c61a0e23adc675f55f55bb1e2c96a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f89f677e134bc9ab3fc6f08b2cb08c7ac7e1ecc15900b10f350b75b97f139e46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shiftedInventory (N : ℕ) : Finset (Nat.Primes × ℕ) :=
  (((range (N+1)).subtype Nat.Prime).product (range (N+1))).filter
    (fun pk => pk.1.val ^ (pk.2+2) ≤ N)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt02/Variant9ee46c7493ee32d0581ede2ff9e76eed07c61a0e23adc675f55f55bb1e2c96a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt02/Variant9ee46c7493ee32d0581ede2ff9e76eed07c61a0e23adc675f55f55bb1e2c96a0.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b2b1c58157e944bc661cb3db060c63c0cac82be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
