# constVSub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d9871fe1c3ddc48362803299162550d82900455fde04328c03c8f0ef7caf516",
  "kind": "def",
  "lexical_name": "constVSub",
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
  "slug": "constvsub--3338ce8c02197eac339f7a6f",
  "source": {
    "blob": "c8f5c13cf9dc8cfd3c6fed54b1d9e51af6e66181",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 331,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousAffineEquiv/Variantb8f308a8bed0216f45e199360621d3276012488ab24a841dd015a486c7ed3c5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3338ce8c02197eac339f7a6faabddda2d183cc57ec3248c8e8e2f239109601cd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousAffineEquiv/Variantb8f308a8bed0216f45e199360621d3276012488ab24a841dd015a486c7ed3c5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d9871fe1c3ddc48362803299162550d82900455fde04328c03c8f0ef7caf516`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def constVSub (p : P₁) : P₁ ≃ᴬ[k] V₁ where
  __ := AffineEquiv.constVSub k p
  __ := Homeomorph.constVSub p

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousAffineEquiv/Variantb8f308a8bed0216f45e199360621d3276012488ab24a841dd015a486c7ed3c5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousAffineEquiv/Variantb8f308a8bed0216f45e199360621d3276012488ab24a841dd015a486c7ed3c5c.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8f5c13cf9dc8cfd3c6fed54b1d9e51af6e66181` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
