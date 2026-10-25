# transportWeakToStrong

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:12174939f111a2d688c922979c90f88c36616b7b85af7f1cd4a36a09728e5ecb",
  "kind": "def",
  "lexical_name": "transportWeakToStrong",
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
  "slug": "transportweaktostrong--b7e819968fe591200f64f366",
  "source": {
    "blob": "d3bea91547aafef9af4384effda7d94857b9aee2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 126,
    "path": "GRWTSK/Logic/ExternalPTSSystemTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7e819968fe591200f64f3664b1e0938f9e260ce01d4fc734a9945512e628889",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSSystemTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:12174939f111a2d688c922979c90f88c36616b7b85af7f1cd4a36a09728e5ecb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def transportWeakToStrong
    (E : SystemEquiv X Y LegalX LegalY stepX stepY)
    (B : WeakToStrongTheorem Y LegalY stepY) :
    WeakToStrongTheorem X LegalX stepX where
  source := B.source
  weakToStrong := by
    intro hX
    have hYweak : SystemWeaklyNormalizing LegalY stepY := E.systemWeak_forward hX
    have hYstrong : SystemStronglyNormalizing LegalY stepY := B.weakToStrong hYweak
    exact E.systemStrong_backward hYstrong

end SystemEquiv

end GRWTSK.Logic.ExternalPTSBridge
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalPTSSystemTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Logic/ExternalPTSSystemTransport.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3bea91547aafef9af4384effda7d94857b9aee2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
