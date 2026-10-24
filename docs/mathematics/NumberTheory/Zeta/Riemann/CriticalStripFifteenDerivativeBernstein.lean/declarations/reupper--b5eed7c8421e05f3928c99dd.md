# reUpper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2a2fdb64231b8e2d90d8349fe7ab1261bb97a270370924e563f207769f1cab9",
  "kind": "def",
  "lexical_name": "reUpper",
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
  "slug": "reupper--b5eed7c8421e05f3928c99dd",
  "source": {
    "blob": "aa38a402eef98530b48e54c0cb4b5ca3142e6bca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 43,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeBernstein.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5eed7c8421e05f3928c99dd39ce48e02aac2416a0436f959a91d91a671c60d8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeBernstein.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a2a2fdb64231b8e2d90d8349fe7ab1261bb97a270370924e563f207769f1cab9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reUpper : Fin 9 → Fin 9 → ℕ :=
  ![
    ![538931496746, 3966733339275, 12471390392105, 21714492383117, 22629888384271, 14149277463465, 4953474917419, 778752860327, 15577294939],
    ![3951862665579, 29052371914556, 91287179248306, 159005539496680, 166049454250008, 104372199397948, 37012287779622, 6048615891472, 177994271509],
    ![12778617824097, 93921199481190, 295307799254956, 515419711982242, 540615243800118, 342821614813026, 123888168604796, 21298549396070, 871426488849],
    ![23790081760505, 174964195243104, 551078422721462, 965149242560012, 1018713631280016, 653492970811608, 241622350576610, 43911103899884, 2313386776591],
    ![27878950211971, 205318944102228, 648403842004318, 1140832594143516, 1213522597090160, 788962940483196, 299089730476338, 57434801072948, 3654610769821],
    ![21049160865169, 155332824891916, 492219705780742, 870799858641632, 934465915173976, 616403412277948, 239716409144610, 48465035428264, 3550300875839],
    ![9994778968379, 73944173745218, 235252270668204, 418750586591494, 453626415599418, 303722742403638, 121098657890604, 25642917104690, 2088477018723],
    ![2727536226563, 20238638996008, 64674322599170, 115876576060732, 126755208463328, 86134889223072, 35162874174694, 7754429393164, 684643723589],
    ![327369455919, 2437031892041, 7824508330385, 14114192259263, 15590515044081, 10747257147827, 4484070086667, 1024215693117, 96240514492]
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeBernstein.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFifteenDerivativeBernstein.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa38a402eef98530b48e54c0cb4b5ca3142e6bca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
