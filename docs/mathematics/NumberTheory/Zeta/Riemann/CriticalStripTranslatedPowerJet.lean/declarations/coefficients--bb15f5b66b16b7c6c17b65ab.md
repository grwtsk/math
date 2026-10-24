# coefficients

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4deac511ae0fe78266767b7a8fa33894536a30496785514b6d4a0751a0f3ec4",
  "kind": "def",
  "lexical_name": "coefficients",
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
  "slug": "coefficients--bb15f5b66b16b7c6c17b65ab",
  "source": {
    "blob": "6f0f9d4865816456615a9d30d698f7c6c2c26c26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 29,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb15f5b66b16b7c6c17b65ab6dbab6ce477732e524e5c6921b7de71f93e144f3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4deac511ae0fe78266767b7a8fa33894536a30496785514b6d4a0751a0f3ec4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coefficients : Fin 3 → Fin 9 → ℂ :=
  ![![⟨(-155519 / 262144), (-41927 / 1048576)⟩, ⟨(1766153953 / 4294967296), (59518079 / 2147483648)⟩, ⟨(-612101897 / 4294967296), (-5156845 / 536870912)⟩, ⟨(141425471 / 4294967296), (9531867 / 4294967296)⟩, ⟨(-12253575 / 2147483648), (-825873 / 2147483648)⟩, ⟨(1698705 / 2147483648), (57245 / 1073741824)⟩, ⟨(-98121 / 1073741824), (-26453 / 4294967296)⟩, ⟨(2429 / 268435456), (2619 / 4294967296)⟩, ⟨(-3367 / 4294967296), (-227 / 4294967296)⟩], ![⟨(-147129 / 524288), (-353573 / 1048576)⟩, ⟨(41379241 / 134217728), (1591048115 / 4294967296)⟩, ⟨(-181838895 / 1073741824), (-436986071 / 2147483648)⟩, ⟨(133180241 / 2147483648), (320052045 / 4294967296)⟩, ⟨(-36578347 / 2147483648), (-87903241 / 4294967296)⟩, ⟨(8037081 / 2147483648), (4828577 / 1073741824)⟩, ⟨(-2943211 / 4294967296), (-442061 / 536870912)⟩, ⟨(461921 / 4294967296), (69379 / 536870912)⟩, ⟨(-31717 / 2147483648), (-76221 / 4294967296)⟩], ![⟨(367375 / 1048576), (49743 / 1048576)⟩, ⟨(-2086051399 / 4294967296), (-282453773 / 4294967296)⟩, ⟨(722970325 / 2147483648), (195782037 / 4294967296)⟩, ⟨(-334083229 / 2147483648), (-90470511 / 4294967296)⟩, ⟨(231568849 / 4294967296), (15677345 / 2147483648)⟩, ⟨(-32102259 / 2147483648), (-4346683 / 2147483648)⟩, ⟨(7417197 / 2147483648), (1004297 / 2147483648)⟩, ⟨(-1468917 / 2147483648), (-198893 / 2147483648)⟩, ⟨(15909 / 134217728), (68931 / 4294967296)⟩]]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f0f9d4865816456615a9d30d698f7c6c2c26c26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
