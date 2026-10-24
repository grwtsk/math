# initial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b23ad7dbda968d9316220e45ae8d2af94c8f507424f0ed502f8214abf565a701",
  "kind": "def",
  "lexical_name": "initial",
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
  "slug": "initial--36f61a6f3f661509b951face",
  "source": {
    "blob": "317b664b5e64c15e51589fc7b9668c3950145af5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 26,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonSixthBlockData.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36f61a6f3f661509b951face4f2f9ef6028e503921871214ce3d7b3b92b44b55",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ConcreteNewtonSixthBlockData.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b23ad7dbda968d9316220e45ae8d2af94c8f507424f0ed502f8214abf565a701`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def initial (i : Fin 64) : GridState :=
  match i.1 with
  | 0 => ⟨17321684619674839204, -5714532178205053077, 55⟩
  | 1 => ⟨17320597737354413031, -5717472153956942676, 55⟩
  | 2 => ⟨17319513729248247488, -5720402809879069714, 55⟩
  | 3 => ⟨17318432579155219203, -5723324204135573518, 55⟩
  | 4 => ⟨17317354271014231036, -5726236394349771525, 55⟩
  | 5 => ⟨17316278788902581660, -5729139437610832195, 55⟩
  | 6 => ⟨17315206117034358990, -5732033390480345416, 55⟩
  | 7 => ⟨17314136239758857063, -5734918308998792295, 55⟩
  | 8 => ⟨17313069141559015933, -5737794248691916163, 55⟩
  | 9 => ⟨17312004807049884196, -5740661264576996618, 55⟩
  | 10 => ⟨17310943220977103743, -5743519411169028344, 55⟩
  | 11 => ⟨17309884368215416354, -5746368742486806462, 55⟩
  | 12 => ⟨17308828233767191755, -5749209312058920078, 55⟩
  | 13 => ⟨17307774802760976768, -5752041172929655705, 55⟩
  | 14 => ⟨17306724060450065189, -5754864377664812163, 55⟩
  | 15 => ⟨17305675992211088037, -5757678978357428556, 55⟩
  | 16 => ⟨17304630583542623825, -5760485026633426870, 55⟩
  | 17 => ⟨17303587820063828517, -5763282573657170726, 55⟩
  | 18 => ⟨17302547687513084821, -5766071670136941760, 55⟩
  | 19 => ⟨17301510171746670504, -5768852366330335111, 55⟩
  | 20 => ⟨17300475258737445402, -5771624712049575424, 55⟩
  | 21 => ⟨17299442934573556803, -5774388756666754788, 55⟩
  | 22 => ⟨17298413185457162905, -5777144549118993960, 55⟩
  | 23 => ⟨17297385997703174035, -5779892137913528241, 55⟩
  | 24 => ⟨17296361357738011337, -5782631571132719299, 55⟩
  | 25 => ⟨17295339252098382633, -5785362896438994236, 55⟩
  | 26 => ⟨17294319667430075182, -5788086161079713170, 55⟩
  | 27 => ⟨17293302590486765038, -5790801411891966552, 55⟩
  | 28 => ⟨17292288008128842750, -5793508695307303452, 55⟩
  | 29 => ⟨17291275907322255124, -5796208057356391977, 55⟩
  | 30 => ⟨17290266275137362784, -5798899543673613014, 55⟩
  | 31 => ⟨17289259098747813279, -5801583199501588412, 55⟩
  | 32 => ⟨17288254365429429468, -5804259069695644742, 55⟩
  | 33 => ⟨17287252062559112949, -5806927198728213719, 55⟩
  | 34 => ⟨17286252177613762279, -5809587630693170366, 55⟩
  | 35 => ⟨17285254698169205741, -5812240409310109971, 55⟩
  | 36 => ⟨17284259611899148432, -5814885577928564878, 55⟩
  | 37 => ⟨17283266906574133439, -5817523179532162103, 55⟩
  | 38 => ⟨17282276570060516861, -5820153256742722797, 55⟩
  | 39 => ⟨17281288590319456483, -5822775851824304505, 55⟩
  | 40 => ⟨17280302955405913855, -5825391006687187190, 55⟩
  | 41 => ⟨17279319653467669582, -5827998762891803945, 55⟩
  | 42 => ⟨17278338672744351599, -5830599161652617327, 55⟩
  | 43 => ⟨17277360001566476245, -5833192243841942197, 55⟩
  | 44 => ⟨17276383628354501907, -5835778049993715959, 55⟩
  | 45 => ⟨17275409541617895060, -5838356620307217059, 55⟩
  | 46 => ⟨17274437729954208492, -5840927994650732596, 55⟩
  | 47 => ⟨17273468182048171529, -5843492212565175873, 55⟩
  | 48 => ⟨17272500886670792073, -5846049313267654715, 55⟩
  | 49 => ⟨17271535832678470262, -5848599335654991341, 55⟩
  | 50 => ⟨17270573009012123579, -5851142318307194590, 55⟩
  | 51 => ⟨17269612404696323226, -5853678299490885264, 55⟩
  | 52 => ⟨17268654008838441589, -5856207317162675354, 55⟩
  | 53 => ⟨17267697810627810632, -5858729408972501874, 55⟩
  | 54 => ⟨17266743799334891030, -5861244612266916058, 55⟩
  | 55 => ⟨17265791964310451902, -5863752964092328610, 55⟩
  | 56 => ⟨17264842294984760966, -5866254501198211723, 55⟩
  | 57 => ⟨17263894780866784951, -5868749260040258557, 55⟩
  | 58 => ⟨17262949411543400128, -5871237276783500845, 55⟩
  | 59 => ⟨17262006176678612793, -5873718587305385289, 55⟩
  | 60 => ⟨17261065066012789551, -5876193227198809409, 55⟩
  | 61 => ⟨17260126069361897261, -5878661231775117477, 55⟩
  | 62 => ⟨17259189176616752481, -5881122636067057157, 55⟩
  | _ => ⟨17258254377742280292, -5883577474831697484, 55⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConcreteNewtonSixthBlockData.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonSixthBlockData.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `317b664b5e64c15e51589fc7b9668c3950145af5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
