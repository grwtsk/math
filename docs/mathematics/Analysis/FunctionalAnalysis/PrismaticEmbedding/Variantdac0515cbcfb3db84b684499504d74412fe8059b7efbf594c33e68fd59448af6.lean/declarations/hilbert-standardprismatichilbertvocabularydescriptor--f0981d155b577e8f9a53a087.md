# Hilbert.standardPrismaticHilbertVocabularyDescriptor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:769b3e914110a5f3c915708aac0e95a3e950223c924f404acecf6b6b5cf39eec",
  "kind": "def",
  "lexical_name": "Hilbert.standardPrismaticHilbertVocabularyDescriptor",
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
  "slug": "hilbert-standardprismatichilbertvocabularydescriptor--f0981d155b577e8f9a53a087",
  "source": {
    "blob": "05eadaa3adb6ba0ca166c63fed0fd01e8e30ee2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 337,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantdac0515cbcfb3db84b684499504d74412fe8059b7efbf594c33e68fd59448af6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0981d155b577e8f9a53a0872a656c1bb00a26cf19194cc5851253afc8210c17",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantdac0515cbcfb3db84b684499504d74412fe8059b7efbf594c33e68fd59448af6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:769b3e914110a5f3c915708aac0e95a3e950223c924f404acecf6b6b5cf39eec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Hilbert.standardPrismaticHilbertVocabularyDescriptor :
    Hilbert.PrismaticHilbertVocabularyDescriptor where
  prismDescriptor :=
    "prism (A, I): δ-ring A with ideal I under prismatic conditions (descriptor only)"
  prismaticSiteDescriptor :=
    "prismatic site over a formal scheme (descriptor only)"
  nygaardFiltrationDescriptor :=
    "Nygaard filtration vocabulary (descriptor only)"
  breuilKisinTwistDescriptor :=
    "Breuil-Kisin twist vocabulary (descriptor only)"
  hodgeTateComparisonDescriptor :=
    "Hodge-Tate comparison, gated by an explicit theorem seed (descriptor only)"
  theoremSeedRequired := Prismatic.HasHodgeTateTheoremSeed.{0}
  boundary := [
    "Vocabulary descriptor for the prismatic side of the Hilbert trace path.",
    "No prismatic comparison theorem is proved or assumed inside Surface.",
    "The Hodge-Tate theorem seed gate is recorded here but not satisfied; the current repository supplies no seed.",
    "q-de Rham material is a specialization within the prismatic framework, not the core definition.",
    "This descriptor never feeds any readiness or theorem-readiness predicate."
  ]

end Surface
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantdac0515cbcfb3db84b684499504d74412fe8059b7efbf594c33e68fd59448af6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PrismaticEmbedding/Variantdac0515cbcfb3db84b684499504d74412fe8059b7efbf594c33e68fd59448af6.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05eadaa3adb6ba0ca166c63fed0fd01e8e30ee2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
