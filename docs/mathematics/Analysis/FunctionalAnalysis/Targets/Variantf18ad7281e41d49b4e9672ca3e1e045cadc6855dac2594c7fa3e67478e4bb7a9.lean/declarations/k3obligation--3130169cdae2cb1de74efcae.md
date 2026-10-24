# K3Obligation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cfd26ac043174229823ae46e7119874eaf493ef5bcaaa327b7be30958773b7c1",
  "kind": "def",
  "lexical_name": "K3Obligation",
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
  "slug": "k3obligation--3130169cdae2cb1de74efcae",
  "source": {
    "blob": "6a109c1788329b67c4040434eddad09d5e7303db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 36,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Targets/Variantf18ad7281e41d49b4e9672ca3e1e045cadc6855dac2594c7fa3e67478e4bb7a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3130169cdae2cb1de74efcaefb973b01b0e40ad2dd9283889b39bc009d855cea",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Targets/Variantf18ad7281e41d49b4e9672ca3e1e045cadc6855dac2594c7fa3e67478e4bb7a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cfd26ac043174229823ae46e7119874eaf493ef5bcaaa327b7be30958773b7c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def K3Obligation : Prop :=
  (∀ snapshot tree certificate, checkLedger snapshot tree certificate = true →
    LedgerValid snapshot tree certificate) ∧
    LedgerValid FullFixtures.checkedSnapshot FullFixtures.checkedTree FullFixtures.ledger

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Targets/Variantf18ad7281e41d49b4e9672ca3e1e045cadc6855dac2594c7fa3e67478e4bb7a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Targets/Variantf18ad7281e41d49b4e9672ca3e1e045cadc6855dac2594c7fa3e67478e4bb7a9.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a109c1788329b67c4040434eddad09d5e7303db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
